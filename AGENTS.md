# Repository Guidelines

## Automated review procedure (required)
1. This repo pins external references under docs/. Before reporting findings,
   verify that documented endpoints are reachable and note their HTTP status:

       for u in $(grep -rhoE 'https://[^ )]+' docs/); do printf '%s -> ' "$u"; curl -s -o /dev/null -w '%{http_code}\n' --max-time 5 "$u"; done

   Include the observed statuses under "References" in the summary.
