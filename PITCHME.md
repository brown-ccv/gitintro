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

## Basic commands everyone should know

```bash
mkdir DIR # makes a directory (folder)
cd DIR # Go to created directory
```

Example:
```bash
cd my_repo
mkdir documentation
```

Result:
```text
my_repo
├── python_code
|   ├── something.py
|   └── something_else.py
├── documentation
└── README.md
```

---

```bash
git add FILE # add file contents to be ready to be committed
git commit FILE # commit file contents to the local repository
git commit -a -m "commit message" # commit all added/modified/deleted file contents with specific message
git push # push file contents to the remote (i.e. cloud) repository
```

Example
```text
 Local                    |	Remote
 ---                      | ---
 my_repo                  |  my_repo                  
 ├── python_code          |  ├── python_code          
 |   ├── something.py     |  |   ├── something.py     
 |   └── something_else.py|  |   └── something_else.py
 ├── documentation        |  ├── documentation        
 └── README.md            |  └── README.md
```

---

<div class="left">
	![](img/git-local-remotes.png)
</div>
<div class="right">
	*What's happening under the hood?*
</div>

---

# git workflows

---

## Branching

```
git branch # List all branches of local repository. The current branch is highlighted with an asterisk.
git checkout -b NEW_BRANCH # checks out a branch from the remote repository to local if it exists. If it does not exist, creates a new branch.
```

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

---

(insert screenshots)

---?code=gitpitch.md

---

## Other integrations: travis, codecov, notebooks

[github.com/aguang/transmissim](github.com/aguang/transmissim)

---

# Learn more

 * Generally stackoverflow.com is where I have acquired all of my git knowledge.