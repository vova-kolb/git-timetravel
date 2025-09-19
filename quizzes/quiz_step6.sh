#!/usr/bin/env zsh
print "Quiz (Step 6): Which Git command remembers erased history?"
print -n "> "
read answer
# normalize: lowercase; accept "git reflog" or "reflog"
answer_norm=${answer:l}
if [[ "$answer_norm" == "git reflog" || "$answer_norm" == "reflog" ]]; then
  print "✓ Correct. Proceed to Act V..."
  exit 0
else
  print "✗ Timeline corrupted."
  print ""
  print "Your answer was wrong — ordinary logs cannot reach into the shadows of time."
  print "Only the record of HEAD’s footsteps can recover what was lost."
  print ""
  print "Return to your last safe checkpoint and try again:"
  print "  git reset --hard cp6"
  print "  git switch main"
  print ""
  print "Then recover the lost commit with:"
  print "  git reflog               # find the lost commit hash"
  print "  git checkout <hash>      # inspect it"
  print "  git cherry-pick <hash>   # restore it onto main"
  exit 1
fi