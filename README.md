# ⏳ Time Traveler

Welcome, Traveler.  
You’ve just discovered a repository that isn’t ordinary code…  
It’s a **time machine**. Every commit is a moment in history.

Something called **The Accident** has fractured time.  
From that moment, two futures appeared: one hopeful, one dark.  
Your present is unstable. To survive, you must **restore the timeline**.

---

**🎯 Your Mission**
- Explore the past by reading files in old commits.
- Investigate both futures (`good_future` and `bad_future`).
- Recover lost knowledge that was erased.
- Solve quizzes to prove your understanding.
- Resolve the conflict between the futures.
- Assemble the final passphrase and stabilize time.

---

**🛠️ How to Play**

You play entirely in your **terminal**.  
Use these commands as your toolbox:

**🔎 Explore files (CLI basics)**
- `ls` → list files in the current folder
- `pwd` → show where you are
- `cd foldername` → enter a folder
- `cd ..` → go back up
- `cat filename` → read a file’s contents
- `less filename` → scroll through long files
- `head -n 10 filename` → see the first 10 lines
- `tail -n 10 filename` → see the last 10 lines
- `grep WORD filename` → search for hidden text
- `cp file newfile` → copy a file
- `mv file newname` → rename/move a file
- `rm file` → remove a file

**⏳ Travel through time (Git basics)**
- `git log --oneline --graph` → view the timeline
- `git show <commit>:path/to/file` → read a file in the past
- `git checkout <commit>` → travel to a specific point in time
- `git switch branchname` → jump to a branch (future)
- `git branch` → list all branches
- `git merge branchname` → try to merge a branch into the present

**🌀 Restore lost history (Advanced Git)**
- `git reflog` → see **everything** that ever happened
- `git cherry-pick <commit>` → bring back a lost commit
- `git restore file` → undo changes to a file

---

**🧩 Quizzes & Checkpoints**

Throughout the timeline, you’ll encounter **quiz files** (e.g., `quiz1.txt`).

- To answer: follow the instructions in the file (e.g., create `answers/q1.txt` or edit the file).
- If correct → you advance.
- If wrong → you fall into a **“bad bad future”** branch (death).

**🔄 Checkpoints**
- **After each major commit**, make a **checkpoint commit** yourself.

Example:
```bash
git add .
git commit -m "Checkpoint after Day 42"
___________________________________________________________________________

**🚀 Where to Begin**

Start your journey in the present:

ls
cat diary/day1.txt