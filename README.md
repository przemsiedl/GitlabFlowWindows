# GitlabFlowWindows
GitFlow every time works very similarly in all operations like:  
  1. Create a new functionality (hotfix etc.)
  2. make changes (writing the functionality code)
  3. rebase
  4. end functionality

All these operations need a lot of commands which is repeatable.  
Example of Create hotfix/functionality:
  1. git checkout master
  2. git pull
  3. git checkout -b [NewBranch]
  4. git push origin -u [NewBranch]
  5. go to the GitLab website
  6. create MergeRequest
  7. make changes
  8. rebase (with history changes) what means
      1. When rebase to master
          1.	git checkout master
          2.	git pull
          3.	git checkout [FuncionalityBranch]
          4.	git rebase -r master
      2. when rebase to other branch
          1.	git checkout [headFunctionalityBranch]
          2.	git pull
          3.	git checkout [FuncionalityBranch]
          4.	git rebase -r [headFunctionalityBranch]
  9. go to the Gitlab website
  10. close MergeRequest

Everything this could be closed in a few commands like:  

  1. new functionality
  2. make changes
  3. rebase
  4. End functionality
    1. open GitLab
    2. Close MergeRequest
    3. end functionality

It's a project created to consolidate and simplify this flow.  
PowerShell addons integrated everything with Windows PowerShell and make git usage in Windows easier, like type git push directly in VisualStudio PackageManagerConsole.
