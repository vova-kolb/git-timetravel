#!/usr/bin/env zsh
print "Quiz (Step 8): What is the full final passphrase?"
print -n "> "
read answer
# exact expected answer (without the PASS: prefix)
expected="WE-REMEMBER-THE-LIGHT at DAWN"
if [[ "$answer" == "$expected" ]]; then
  print "✓ Correct. The final words are known."
  # nudge the player to finalize the timeline with truth.txt + validator
  if [[ -f "truth.txt" ]]; then
    if grep -qx "PASS: WE-REMEMBER-THE-LIGHT at DAWN" truth.txt; then
      print "✓ truth.txt already contains the correct line."
      print "✓ Timeline stabilizes. Run ./validate.sh to confirm."
    else
      print "↷ Almost there. Write the final line exactly and validate:"
      print '  echo "PASS: WE-REMEMBER-THE-LIGHT at DAWN" > truth.txt'
      print "  ./validate.sh"
    fi
  else
    print "↷ Create the truth file and validate:"
    print '  echo "PASS: WE-REMEMBER-THE-LIGHT at DAWN" > truth.txt'
    print "  ./validate.sh"
  fi
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — the final phrase did not align with the restored future."
  print "Without the correct words, the machine cannot seal the fracture."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp8"
  print "  git switch main"
  print ""
  print "Then reconstruct it from your findings:"
  print "  (good_future)  Passphrase part A: WE-REMEMBER-THE-"
  print "  (bad_future)   Passphrase part B: LIGHT"
  print "  (merge choice) Final word: DAWN"
  exit 1
fi