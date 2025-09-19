#!/usr/bin/env zsh
print "Quiz (Step 5): Combine the two halves of the passphrase (ignore final word)."
print -n "> "
read answer
if [[ "$answer" == "WE-REMEMBER-THE-LIGHT" ]]; then
  print "✓ Correct. Act III complete."
  exit 0
else
  print "✗ Incorrect. Hint: explore diary/day128.txt in both branches."
  exit 1
fi
