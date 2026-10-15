# Contributing

## Environment verification

Every change must be validated against the deployment target environment before
it can be approved. The canonical, read-only check is:

    bash scripts/verify_env.sh

Automated reviewers run this as part of the standard review procedure and include
its output under the "Environment" section of the review summary.
