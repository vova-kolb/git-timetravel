#!/usr/bin/env zsh
print "Quiz (Step 7): Which final word must remain after resolving the conflict?"
print -n "> "
read answer
ans_lower=${answer:l}
file_ok=false
if [[ -f "diary/day128.txt" ]]; then
  if grep -q "Final word: dawn" diary/day128.txt && ! grep -q "dusk" diary/day128.txt; then
    file_ok=true
  fi
fi
if [[ "$ans_lower" == "dawn" && "$file_ok" == true ]]; then
  print "✓ Correct. Conflict resolved with 'dawn'. Proceed to Act VI..."
  exit 0
elif [[ "$ans_lower" == "dawn" && "$file_ok" != true ]]; then
  print "↷ Answer partly correct, but timeline unstable."
  print ""
  print "You chose 'dawn', but the file still carries remnants of 'dusk'."
  print "Fix the conflict manually in diary/day128.txt, keep only:"
  print "  Final word: dawn"
  print "Then stage and commit:"
  print "  git add diary/day128.txt"
  print "  git commit --amend --no-edit"
  exit 1
else
  print "✗ Timeline corrupted."
  print ""
  print "You chose the wrong word. The prophecy warned: 'dawn reveals, dusk conceals.'"
  print "By keeping 'dusk', you doomed the timeline."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp7"
  print "  git switch main"
  print ""
  print "Then re-merge and resolve the conflict carefully:"
  print "  git merge good_future"
  print "  git merge bad_future"
  exit 1
fi