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
  print "✓ Correct. Conflict resolved with 'dawn'. Proceed to Act VI."
  exit 0
elif [[ "$ans_lower" == "dawn" && "$file_ok" != true ]]; then
  print "↷ Answer is right, but file doesn't reflect it. Ensure 'Final word: dawn' and no 'dusk', then add+commit."
  exit 1
else
  print "✗ Not quite. Hint: 'dawn reveals, dusk conceals.'"
  exit 1
fi
