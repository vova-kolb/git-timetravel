#!/usr/bin/env zsh
print "Quiz (Step 3): What is the KEY from the machine logs?"
print -n "> "
read answer
if [[ "$answer" == "7E2-ALPHA-314" ]]; then
  print "✓ Correct. Proceed to Act III."
  exit 0
else
  print "✗ Wrong. Hint: search 'lab/machine.log' with 'grep KEY lab/machine.log'."
  exit 1
fi
