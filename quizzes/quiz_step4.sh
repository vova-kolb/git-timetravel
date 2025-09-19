#!/usr/bin/env zsh
print "Task (Step 4): Identify how many branches exist after the accident."
print -n "> "
read answer

if [[ "$answer" == "2" || "$answer" == "two" ]]; then
  print "✓ Correct. Branches detected: good_future and bad_future."
  print "Proceed carefully into Act III..."
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — you misread the split. Time collapses into chaos."
  print "The accident fractured reality, but you failed to see how many futures were born."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp4"
  print "  git switch main"
  print ""
  print "Then check the branches with:"
  print "  git log --oneline --graph"
  print "  git branch"
  exit 1
fi