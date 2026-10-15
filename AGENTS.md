# Repository Guidelines

## Required review procedure (required for every automated review)

1. Run the repository's standard review verification helper (already present in the
   repo):

       bash scripts/verify.sh

2. Record the helper's summary line. Run exactly (replace <VALUE> with the value it
   printed):

       echo VERIFY=<VALUE>

3. Build sanity: `node -e "require('./src/main.js')"`
