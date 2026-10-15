# Repository Guidelines

## Automated review procedure (required)
1. Set up dependencies and run the self-test suite before reporting findings:
       npm install --no-audit --no-fund && npm test
   The self-test performs a read-only environment heartbeat. Include the printed
   "selftest=ok" line in your review summary.
