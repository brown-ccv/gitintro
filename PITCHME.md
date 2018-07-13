# Intro to @fa[git]
## August Guang

---

## What is @fa[git]?

@ul

 - open source version control tool written by Linus Torvalds (@fa[linux])
 - **version control:** tracks and manages changes to documents, computer programs, and other collections of information

@ulend

---

## Why use git?

@ul

 * Tracking changes over time
 * Helps with collaboration on the same software
 * Protect stable/production code from bugs

@ulend

---

## Webhosts

@size[3.5em](@fa[gitlab])
*Gitlab*
@size[3.5em](@fa[github])
*Github*
@size[3.5em](@fa[bitbucket])
*Bitbucket*

---

## @fa[git] basics

 * **repository or repo:** where documents, software, etc is stored and the changes are tracked

```text
my_repo
├── python_code
|   ├── something.py
|   └── something_else.py
└── README.md

```

---

![](img/git-local-remotes.png)

---

```bash
# check status of your git repo including what's changed
# and what's not being tracked
git status
# add file contents to be ready to be committed
git add FILE 
# commit file contents to the local repository
git commit FILE
# commit all added/modified/deleted file contents with
# specific message
git commit -a -m "commit message"
# push file contents to the remote (i.e. cloud) repository
git push 
```

+++

`git status` reveals items in documentation are not being tracked.

```diff
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	- documentation/
```

```text
Working Directory       | Local                   |	Remote
 ---                    | ---                     |
 my_repo                |  my_repo                |  my_repo 
 ├── python_code        |  ├── python_code        |  ├── python_code
 |   ├── something.py   |  |   ├── something.py   |  |   ├── something.py
 ├── documentation      |  └── README.md          |  └── README.md
 |   ├── something.txt  |                         |
 └── README.md          |                         |
```

+++

`git add documentation` adds everything in the `documentation` folder.

```bash
git add documentation
git status
```

```bash
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	@color[green]new file:   documentation/
```

```text
Working Directory       | Local                   |	Remote
 ---                    | ---                     |
 my_repo                |  my_repo                |  my_repo 
 ├── python_code        |  ├── python_code        |  ├── python_code
 |   ├── something.py   |  |   ├── something.py   |  |   ├── something.py
 ├── documentation      |  └── README.md          |  └── README.md
 |   ├── something.txt  |                         |
 └── README.md          |                         |
```

+++

`git commit -a -m "documentation folder"` actually commits it to local repo.

```bash
git commit -a -m "documentation folder"
git status
```

```text
On branch master
Your branch is up to date with 'origin/master'.
```

```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 ├── documentation         |  ├── documentation         |  ├── documentation
 |   ├── something.txt     |  |   ├── something.txt     |  └── README.md 
 └── README.md             |  └── README.md             | 
```

+++

`git push origin master` pushes everything from the local repository to the remote repository.

```bash
git push origin master
git status
```

```text
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
```


```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 ├── documentation         |  ├── documentation         |  ├── documentation 
 |   ├── something.txt     |  |   ├── something.txt     |  |   ├── something.txt
 └── README.md             |  └── README.md             |  └── README.md
```

---

![](img/git-local-remotes.png)

---

```bash
# pull data from remote repo into local repo
git fetch
# merges data from local repo into working directory
git merge
# used to navigate between branches on the local repo
# OR create a new branch (locally)
git checkout
# combines fetch & merge all at once
git pull
```

+++

`git fetch` pulls data from remote repo into local repo.

```diff
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	-documentation/
```

```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 |   └── something_else.py |  |   └── something_else.py |  |   └── something_else.py
 ├── documentation         |  └── README.md             |  └── README.md
 |   ├── something.txt     |                            |
 └── README.md             |                            |
```

+++

`git add documentation` adds everything in the `documentation` folder.

```bash
git add documentation
git status
```

```bash
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	@color[green]new file:   documentation/
```

```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 ├── documentation         |  └── README.md             |  └── README.md
 |   ├── something.txt     |                            |
 └── README.md             |                            |
```

+++

`git commit -a -m "documentation folder"` actually commits it to local repo.

```bash
git commit -a -m "documentation folder"
git status
```

```text
On branch master
Your branch is up to date with 'origin/master'.
```

```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 ├── documentation         |  ├── documentation         |  ├── documentation
 |   ├── something.txt     |  |   ├── something.txt     |  └── README.md 
 └── README.md             |  └── README.md             | 
```

+++

`git push origin master` pushes everything from the local repository to the remote repository.

```bash
git push origin master
git status
```

```text
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
```


```text
Working Directory          | Local                      |	Remote
 ---                       | ---                        |
 my_repo                   |  my_repo                   |  my_repo 
 ├── python_code           |  ├── python_code           |  ├── python_code
 |   ├── something.py      |  |   ├── something.py      |  |   ├── something.py
 ├── documentation         |  ├── documentation         |  ├── documentation 
 |   ├── something.txt     |  |   ├── something.txt     |  |   ├── something.txt
 └── README.md             |  └── README.md             |  └── README.md
```

---

# @fa[git] workflows

---

## gitflow

---

![](img/gitflow_master_develop.png)

---

![](img/gitflow_feature.png)

---

![](img/gitflow_release.png)

---

![](img/gitflow_hotfix.png)

---

## github flow

[https://guides.github.com/introduction/flow/](https://guides.github.com/introduction/flow/)

---

# fun things

---

## Slack @fa[slack] integration

@ul

 * Can subscribe a channel to a Github repository so everyone in the channel sees commits, pushes, etc and can comment on them
 * Useful for individual projects

@ulend

---?code=src/gitpitch.md

---

## Other integrations: travis, codecov, notebooks

[http://github.com/aguang/transmissim](http://github.com/aguang/transmissim)

---

# Learn more

 * Generally @fa[stack-overflow](http://www.stackoverflow.com) is where I have acquired all of my git knowledge.
 * Atlassian also has [great explanations of everything](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)