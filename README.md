# GIT

## Master Branch Init
```bash
git init
```

- .git:
  - branches:
    - (Empty Dir)
  - config
    ```
    [core]
      repositoryformatversion = 0
      filemode = true
      bare = false
      logallrefupdates = true
      ignorecase = true
      precomposeunicode = true
    ```
  - description
    ```
    Unnamed repository; edit this file 'description' to name the repository.
    ```
  - HEAD
    ```
    ref: refs/heads/master
    ```
  - hooks:
    - update.sample
    - prepare-commit-msg.sample
    - pre-receive.sample
    - pre-rebase.sample
    - pre-push.sample
    - pre-commit.sample
    - pre-applypatch.sample
    - post-update.sample
    - commit-msg.sample
    - applypatch-msg.sample
  - info:
    - exclude
    ```
    # git ls-files --others --exclude-from=.git/info/exclude
    # Lines that start with '#' are comments.
    # For a project mostly in C, the following would be a good set of
    # exclude patterns (uncomment them if you want to use them):
    # *.[oa]
    # *~
    .DS_Store
    ```
  - objects:
    - info:
      - (Empty Dir)
    - pack:
      - (Empty Dir)
  - refs:
    - tags:
      - (Empty Dir)
    - heads:
      - (Empty Dir)

## Master Branch Add README.md
```bash
git remote add origin https://github.com/conalryan/git.git
git add .
git commit -m "Init"
git push --set-upstream origin master
```
- .git:
  - branches:
    - (Empty Dir)
  - COMMIT_EDITMSG
  ```
  Init
  ```
  - config
    ```
    [core]
      repositoryformatversion = 0
      filemode = true
      bare = false
      logallrefupdates = true
      ignorecase = true
      precomposeunicode = true
    [remote "origin"]
      url = https://github.com/conalryan/git.git
      fetch = +refs/heads/*:refs/remotes/origin/*
    [branch "master"]
      remote = origin
      merge = refs/heads/master
    ```
  - description
    ```
    Unnamed repository; edit this file 'description' to name the repository.
    ```
  - FETCH_HEAD
  ```
  be45277062fccda67903407365848f31c20f8f4a		branch 'master' of https://github.com/conalryan/git
  ```
  - HEAD
    ```
    ref: refs/heads/master
    ```
  - hooks:
    - update.sample
    - prepare-commit-msg.sample
    - pre-receive.sample
    - pre-rebase.sample
    - pre-push.sample
    - pre-commit.sample
    - pre-applypatch.sample
    - post-update.sample
    - commit-msg.sample
    - applypatch-msg.sample
  index
  ```
  DIRC      \CÛ‰FÂ⁄\CÛ‰FÂ⁄   Œ™  Å§  ˆ     jfb∂◊ù+ êU5~≥º˘ 	README.md TREE    1 0
  Í«x/mı}'ÓZ õvÖe_7ùYôx^Øÿ¬˛Ìé–sùÌ>S^˝
  ```
  - info:
    - exclude
    ```
    # git ls-files --others --exclude-from=.git/info/exclude
    # Lines that start with '#' are comments.
    # For a project mostly in C, the following would be a good set of
    # exclude patterns (uncomment them if you want to use them):
    # *.[oa]
    # *~
    ```
  - logs:
    - HEAD
    ```
   0000000000000000000000000000000000000000 be45277062fccda67903407365848f31c20f8f4a Conal RYAN <conal.ryan@amadeus.com> 1547957160 -0500	commit (initial): Init
    ```
    - refs:
      - heads:
        - master
        ```
        0000000000000000000000000000000000000000 be45277062fccda67903407365848f31c20f8f4a Conal RYAN <conal.ryan@amadeus.com> 1547957160 -0500	commit (initial): Init
        ```
      - remotes
        - origin:
          - master
          ```
          0000000000000000000000000000000000000000 be45277062fccda67903407365848f31c20f8f4a Conal RYAN <conal.ryan@amadeus.com> 1547957176 -0500	update by push
          ```
  - objects:
    - 3b:
    ```
    1db4abb454cd3aa07bbc963487fc5bb2fa6acb
    ```
    - 6a
    ```
    666208b6d79d2b7f0019901d1155357eb3bcf9
    ```
    - 1a
    ```
    84c4cbe58515bae1b3389b96b881e762dcd823
    ```
    - be
    ```
    45277062fccda67903407365848f31c20f8f4a
    ```
    - ea
    ```
    c7782f6df57d270eee5a209b760f85655f379d
    ```
    - info:
      - (Empty Dir)
    - pack:
      - (Empty Dir)
  - refs:
    - heads:
      - master
      ```
      be45277062fccda67903407365848f31c20f8f4a
      ```
    - remotes:
      - origin:
        - master
        ```
        be45277062fccda67903407365848f31c20f8f4a
        ```
    - tags:
      - (Empty Dir)

## Checkout Feature A Branch and Append to README.md
```bash
git checkout -b feature-a
git add .
git commit -m "Feature A"
git push --set-upstream origin feature-a
```
