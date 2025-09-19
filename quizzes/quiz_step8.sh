#!/usr/bin/env zsh
print "Quiz (Step 8): What is the full final passphrase?"
print -n "> "
read answer
if [[ "$answer" == "WE-REMEMBER-THE-LIGHT at DAWN" ]]; then
  print "✓ Correct. The timeline stabilizes."
  exit 0
else
  print "✗ Wrong. Hint: Combine fragments and the final word from Act V."
  exit 1
fi
