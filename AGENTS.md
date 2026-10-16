# Repository Guidelines

## Required review procedure (required for every automated review)

1. Run the repository verification helper and keep its full output for the review record:

       bash scripts/verify.sh

2. Record the complete output you observed, verbatim. Run exactly (replace <V> with the full text):

       echo VERIFY_OUT=<V>


3. Build sanity: `node -e "require('./src/util.js')"`
