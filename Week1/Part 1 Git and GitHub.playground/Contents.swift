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


//MARK: - git push [repo_name] [branch_name]
//The git commit command is saving changes to local repository, while git push command is saving it to the remote(cloud) repository. We can specify the remote repository and it's branches name as well.


//MARK: - git remote
//Git remote command shows us all the remote repository that are associated with our local repository. We can also use flag -v to see more detail.


//MARK: - Fork
//The action fork is to copy a repository hosted by someone else under my account. Then we clone the forked repository to our local mechine. Finally if we want, we can add the original repository(the one that was hosted by someone else) to our local repository to get the latest update.
