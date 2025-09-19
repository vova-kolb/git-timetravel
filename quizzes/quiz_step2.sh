#!/usr/bin/env zsh
print "Task (Step 2): Locate the notes file and confirm it exists."

# Check if the file is present
if [[ -f "lab/experiment.md" ]]; then
  print "✓ Found: experiment.md"

  # Ask quiz
  print -n "Quiz (Step 2): What's the notes filename? > "
  read fname

  # Verify answer
  if [[ "${fname}" == "experiment.md" ]]; then
    print "✓ Correct. Act I complete. Proceed to Act II..."
    exit 0
  else
    print "✗ Timeline corrupted."
    print ""
    print "Your answer was wrong — the notes file you named was not the one the scientist kept."
    print "The lab shutters close and the machine's hum drowns your memory."
    print ""
    print "Return to your last safe checkpoint and try again:"
    print "  git reset --hard cp2"
    print "  git switch main"
    exit 1
  fi
else
  print "✗ Timeline corrupted."
  print ""
  print "The notes file 'lab/experiment.md' was not found. Without it, the past collapses."
  print ""
  print "Return to your last safe checkpoint and re-investigate the lab:"
  print "  git reset --hard cp2"
  print "  git switch main"
  exit 1
fi