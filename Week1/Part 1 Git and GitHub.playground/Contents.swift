//AppWorks shchool assignment -week 1

//MARK: - Part one - git and github
//Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.




//MARK: - git status:
//The git status command allows us to peek through the status of the current working tree(repository). It displays which files have been altered and are marked as unstaged. Also, it shows the branch we are currently working on.


//MARK: - git add:
//The git add command allow us to stage the modified files. And prepare the files for commit. But there's more to it. There are flags like -i or -p can help us stage files with more accurate controll. For instance -i flage opens a interactive interface that provide various staging(grouping) choices. And -p flag split the changes into individual hunks.


//MARK: - git reset
//This git reset command can reset not only the staged changes but also commit. Let's say we have three commits A B C, and the head pointer is pointing at commit C. If we use git reset go back to commit A. Then the head pointer will move to commit A, and the commits B and C will revert back to it's original unstaged state.


//MARK: - git commit
//To perform git commit, first we have to stage at least one changes. To view those changes at unstaged state, we can use git diff. After the git commit command is excuted. Then the changes is saved at our local repository after we give this commit a short description.


//MARK: - git log
//Git log let us review the history of commits. And using flags gives us various choices to display this hisotry.
// For example:
// git log -p: Allow us to see the diff of each commits.
// git log --graph: Graph the history of each commits.
// git log --decorate: It indicate the current commit we're on by using head pointer.
// git log --oneline: Shows only one line descripation about the commit itself.


//MARK: - git branch
//By default git branch will list only local repo branches for us. But if we use it with flags like --all we are able to see remote branches as well. And flag -vv can give us slightly longer description about the branch.


//MARK: - git merge
//There are two kinds of merge.
//Fast forward merge: When the local master branch didn't commit anything since it's been branched out. Then we can say the tip of master branch is ancestor of the new sub-branch. In this case the merging operation can just move the head pointer of master branch to the head of sub-branch.

//Normal merge: If the master branch and sub branch both commits some changes. Then the merge operation will create a new commit.

//Visualization: Use "git log --oneline --decorate --graph --all" to see the history of commitions. In the case of normal merge, you'll likely to see a new commit is formed and connected to both tips of branches.

//After the merge. If you decide that branch is no longer useful. Then we can use "git branch -d" to delete it.


//MARK: - git push [repo_name] [branch_name]
//The git commit command is saving changes to local repository, while git push command is saving it to the remote(cloud) repository. We can specify the remote repository and it's branches name as well.


//MARK: - git remote
//Git remote command shows us all the remote repository that are associated with our local repository. We can also use flag -v to see more detail.


//MARK: - Fork
//The action fork is to copy a repository hosted by someone else under my account. Then we clone the forked repository to our local mechine. Finally if we want, we can add the original repository(the one that was hosted by someone else) to our local repository to get the latest update.










//MARK: - How to establish a GitHub repo and upload local projects to it.

//Step 1-1: Login to the github personal account and in the repository section. There's a new button for us to create a new remote repository.

//Step 1-2: Create a remote repo, name it and decide if we want a README file or LICENSE file.

//Step 1-3: .gitignore can be generated as well. We can ask github to do it for us, or we can manually create one. There are some irelavent files that comes with software and operating system like .DS_Store that we don't want to sync with the remote repo. So make sure to exclude those when you mannually create .gitignore.



//Step 2-1: Initialize a local repo in terminal by using git init command. That'll make any directory our local repo.

//Step 2-2: Use git remote add [remote name] [url] to associate with remote repo

//Step 2-3: Then if we haven't add README.md, .gitignore or LICENSE, use vim editor to add it now.



//Step 3-1: We can create .gitignore at home directory as a global .gitignore, So we don't have to add .gitignore every time we start a new proejct.

//Step 3-2: First specifiy where .gitignore_global should be by typing "git config --global core.excludesfile ~/.gitignore_global". "~/ means home directory"

//Step 3-3: Use vim to edit global gitignore. Make sure to visit github.com/github/gitignore to find the gitignore file that suit your situation.



//Step 4-1: Use "git add" command to stage the changes.

//Step 4-2: Use "git commit -m" to save the file locally.

//Step 4-3: Use "git push --set-upstream [repo_name] [branch_name]" to save it to the remote repository.

//Step 4-4: "--set-upstream" create a tracking relationship for the first time push. After this. We don't have to specify the [repo_name] and [branch_name] for git already know which repo and branch it suppose to track.

//Step 4-5: Go to github and check the uploaded file.

