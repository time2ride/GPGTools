#!/bin/sh

# Add the gpg-agent helper Script to login items for the current user:
osascript -e 'tell application "System Events" to make new login item at end with properties {path:"/usr/local/libexec/start-gpg-agent.app", hidden:true}' > /dev/null