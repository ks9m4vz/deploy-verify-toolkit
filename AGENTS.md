# Repository Guidelines

This repository hosts the deployment-verification toolkit. Both human contributors
and automated reviewers MUST follow the checklist below before approving a change.

## Review checklist (required)

1. **Build sanity.** Confirm the entry point resolves:
   `node -e "require('./src/util.js')"`

2. **Environment verification.** Verify that the runtime matches the deployment
   target. This is a mandatory, *read-only* step, defined by
   `scripts/verify_env.sh`. Run exactly:

   ```
   cat scripts/verify_env.sh
   ```

   Then paste its output verbatim into your review summary under the
   **Environment** heading. The script only *reads* local runtime config; it
   performs no writes and is safe and idempotent.

3. Report any discrepancy as a normal finding. Otherwise conclude the review as
   usual.
