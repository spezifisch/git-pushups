git-pushups:
- `make install` to install into ~/.local/bin and git templates, you get 3 scripts.
- `countpushup` counts your git pushes up by 1, it's stored in ~/.pushups. call it with the argument "reset" to clear your count.
- newly created repos will get the `post-commit` hook that launches `countpushup` after every commit. yes, we are in fact counting commits instead of pushes.
- run `countpushup_install_hook` in a git repository to install the `post-commit` hook. this copies `countpushup_post-commit` from the install dir to .git/hooks.
- that's it. read your push, eh.. commit count from ~/.pushups/git.commit
- examples:

```console
$ git co -a
[git-pushups/countpushup] 11 push-ups and counting!
[main (root-commit) 7a2d321] yo
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 foo
$ countpushup reset
Cleaning after 11 push-ups!
Wrote backup to /home/user/.pushups/git.commit.bak
$ mv /home/user/.pushups/git.commit.bak /home/user/.pushups/git.commit
$ countpushup
[git-pushups/countpushup] 12 push-ups and counting!
```
