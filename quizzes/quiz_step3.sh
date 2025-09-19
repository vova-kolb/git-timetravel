#!/usr/bin/env zsh
print "Quiz (Step 3): What is the KEY from the machine logs?"
print -n "> "
read answer

if [[ "$answer" == "7E2-ALPHA-314" ]]; then
  print "✓ Correct. Proceed to Act III..."
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — without the KEY, the machine collapses into silence."
  print "The energy field destabilizes and you are erased from time."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp3"
  print "  git switch main"
  print ""
  print "Then investigate again with:"
  print "  less lab/machine.log"
  print "  grep KEY lab/machine.log"
  exit 1
fi