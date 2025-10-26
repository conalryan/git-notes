# git

## Remotes

```bash
# List
git remote -v

# Set
git remote set-url <remote-name> <some-url.git>
git remote set-url origin https://github.com/conalryan/git-notes.git

# Add
git remote add <some-name> <some-url.git>
git remote add foo https://github.com/foo/git-notes.git
```

## Branches

```bash
# Pull and fetch
git pull
git fetch --all

# Existing
git checkout <branch-name>

# New
git checkout -b <branch-name> <commit>
git push --set-upstream <remote-name> <branch-name>
git push --set-upstream origin feature/foo

# Rename
git branch -m <new-branch-name>
git push <remote-name> -u :<old-branch-name> <new-branch-name>
git push orign -u :feature/foo feature/bar

# Delete local
git branch -D <branch-name>

# Delete remote
git push <remote-name> :<branch-name>

# Checkout from PR
git fetch origin refs/pull-requests/<PR_NUMBER>/from:pr-<PR_NUMBER>-from
git checkout pr-<PR_NUMBER>-from
```

## Rebase

```bash
# Review/squash/fix/delete
git rebase -i HEAD~<number-of-commits>

# Merge Fix
git pull --rebase origin develop

# Onto
# Usecase: My branch 'featureB' is no longer dependent on 'featureA'
# I can rebase onto 'main' and leave 'featureA' out
# e.g. `git rebase --onto main featureA featureB`
git rebase --onto <newbase> <oldbase>
```

## Git Strategy Options
The `--strategy-option` (or `-X`) parameter allows you to pass options to the underlying merge strategy. Here are the main options:

For the recursive strategy (default for most merges):
1. `ours` with `git merge`:
    - When there are conflicts, automatically favor your current branch (local side)
    - Example: `git merge -X ours feature-branch`
2. `theirs` with `git merge`:
    - When there are conflicts, automatically favor the branch being merged in
    - Example: `git merge -X theirs feature-branch`
3. `ours` with `git pull --rebase`:
    - When there are conflicts, automatically favor your local commits being replayed
    - Example: `git pull --rebase upstream master --strategy-option=ours`
4. `theirs` with `git pull --rebase`:
    - When there are conflicts, automatically favor the remote commits you're rebasing onto
    - Example: `git pull --rebase upstream master --strategy-option=theirs`

## Conflicts

Option 1: Use the strategy option (if it works for your case)
```bash
git pull --rebase upstream master --strategy-option=ours
```

Option 2: Handle conflicts manually during rebase
If conflicts occur, you can accept all current changes for each conflicted file:
```bash
# Start the rebase
git pull --rebase upstream master

# For each conflict, accept your current changes
git checkout --ours <conflicted-file>
git add <conflicted-file>

# Continue the rebase
git rebase --continue
```

Option 3: Use a more automated approach

```bash
# Start the rebase
git pull --rebase upstream master

# If conflicts occur, accept all current changes automatically
git status --porcelain | grep "^UU" | cut -c4- | xargs -I {} sh -c 'git checkout --ours "{}" && git add "{}"'

# Continue the rebase
git rebase --continue
```

## Reset

```bash
# Soft
git reset --soft HEAD~<number-of-commits>

# Hard
git reset --hard <commit>
```

## Cherry pick

```bash
git cherry-pick <commit>
```
