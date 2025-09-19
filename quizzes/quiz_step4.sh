#!/usr/bin/env zsh
print "Task (Step 4): Identify how many branches exist after the accident."
print -n "> "
read answer
if [[ "$answer" == "2" || "$answer" == "two" ]]; then
  print "✓ Correct. Branches: good_future and bad_future."
  exit 0
else
  print "✗ Wrong. Hint: try 'git branch'."
  exit 1
fi
