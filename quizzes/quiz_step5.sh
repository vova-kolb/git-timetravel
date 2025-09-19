#!/usr/bin/env zsh
print "Quiz (Step 5): Combine the two halves of the passphrase (ignore the final word)."
print -n "> "
read answer

if [[ "$answer" == "WE-REMEMBER-THE-LIGHT" ]]; then
  print "✓ Correct. Act III complete. Proceed to Act IV..."
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — the halves of the passphrase did not align."
  print "The futures collapse into paradox, leaving you stranded in the void."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp5"
  print "  git switch main"
  print ""
  print "Then revisit both futures with:"
  print "  git switch good_future"
  print "  cat diary/day128.txt"
  print "  git switch bad_future"
  print "  cat diary/day128.txt"
  exit 1
fi