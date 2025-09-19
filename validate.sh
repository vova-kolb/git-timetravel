#!/usr/bin/env zsh
if [[ -f "truth.txt" ]]; then
  content=$(<truth.txt)
  if [[ "$content" == "PASS: WE-REMEMBER-THE-LIGHT at DAWN" ]]; then
    print "✓ Timeline stabilized. The future is safe… for now."
    exit 0
  else
    print "✗ Incorrect passphrase. The timeline collapses. Try again."
    exit 1
  fi
else
  print "✗ File 'truth.txt' not found. Did you run 'echo ... > truth.txt'?"
  exit 1
fi
