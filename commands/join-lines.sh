#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Join lines and collapse whitespace sequences in clipboard text
# @raycast.mode silent

# pbpaste | tr -d '\n' | tr -s '[:space:]' | pbcopy
pbpaste | xargs -J {} echo {} | pbcopy
echo 'Copied to clipboard'
