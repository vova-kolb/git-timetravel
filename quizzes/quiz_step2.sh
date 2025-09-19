#!/usr/bin/env zsh
print "Task (Step 2): Locate the notes file and confirm it exists."
if [[ -f "lab/experiment.md" ]]; then
  print "✓ Found: experiment.md"
  print -n "Quiz (Step 2): What's the notes filename? > "
  read fname
  if [[ "${fname}" == "experiment.md" ]]; then
    print "✓ Correct. Act I complete."
    exit 0
  else
    print "✗ Incorrect filename. Hint: try 'ls lab'."
    exit 1
  fi
else
  print "✗ 'lab/experiment.md' not found. Explore the lab: 'ls lab'"
  exit 1
fi
