#!/usr/bin/env zsh
print -n "Quiz (Step 1): Where did you find the scientist’s first clue? > "
read answer
answer_lower=${answer:l}
if [[ "$answer_lower" == "diary" ]]; then
  print "✓ Correct. Proceed to Step 2."
  exit 0
else
  print "✗ Not quite. Hint: use 'ls', 'cd diary', 'cat day1.txt'. Try again."
  exit 1
fi
