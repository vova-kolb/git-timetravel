#!/usr/bin/env zsh
print -n "Quiz (Step 1): Where did you find the scientist’s first clue? > "
read answer
answer_lower=${answer:l}

if [[ "$answer_lower" == "diary" ]]; then
  print "✓ Correct. Proceed to Step 2..."
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — the clue was not found there."
  print "The thread of time unravels… and you are lost."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp1"
  print "  git switch main"
  print ""
  print "Then retrace your steps with:"
  print "  ls"
  print "  cd diary"
  print "  cat day1.txt"
  exit 1
fi