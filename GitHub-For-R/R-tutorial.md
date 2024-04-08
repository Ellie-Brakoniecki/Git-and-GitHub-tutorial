---
title: "Connecting R with Git"

output: 
  html_document:
      toc: true
      toc_depth: 3 
---

# Connecting R with Git

This guide will show you step by step how to create a new R project using Git and how to connect existing R projects to Git, all within R. We'll work through practical examples, including script creation and modification, to help you understand the Git workflow within the context of R development (For instructions on how to achieve this using VS code, please see the Python Guide).

# Creating a new R project

Step 1: 

  - Go to Github.com and log in into your account.
  - Go to the home page and create a new repository. 

  <img src="images/Create new repo.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 2: 

  - Once your repo has been created, 
  - Go to your newly created repo in Github, and copy the Repo address to your clipboard.

<br> <!-- HTML line break -->
    <img src="images/Copy Repo.png" alt="Alt text" width="700">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 3: 

-   Open R Studio, create a New Project and select Version Control.

<br> <!-- HTML line break -->
    <img src="images/R version control.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 4: 

  - Select 'Git Clone a project from a Git repository'.

<br> <!-- HTML line break -->
    <img src="images/Create from Git.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 5: 

  - Clone the Git repo. Paste the repo URL onto 'Repository URL'
  - Enter Project Directory Name.
  - Click on Browse to save the repo at your location of choice in your local computer.
  - Then click on Create New Project.
  
  <br> <!-- HTML line break -->
    <img src="images/Clone Git.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Once set up, your R projet should look something similar to this. The main features to look for is that you can see the Git tab on the top right corner of your screen. This is where you will interact with Git directly from R. You will be able to push and pull changes. Also, work on your scripts in R and stage, commit and push changes directly from R. 

  <br> <!-- HTML line break -->
    <img src="images/Project Set up.png" alt="Alt text" width="700">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

# Practice Section

## Creating a simple file 
Step 1: 

  - Open your R project and create a new R script.
  - Write the following script.

  ```R
  # This is a simple R script that prints "Hello, World!" to the console.
print("Hello, World!")
```

Step 2: 

  - Save the file in your project directory as "A simple script.R"

  - Once saved, the file will be staged, meaning Git will recognise the change and will prepare to integrate this new feature/change to the repository. 

  - Go to the terminal window in R (botttom of the screen, next to console):

    <br> <!-- HTML line break -->
    <img src="images/Terminal R.png" alt="Alt text" width="700">
    <br> <!-- HTML line break -->
    <br> <!-- HTML line break --> 

  - Confirm that it has been staged for commit by running `git status` in the terminal.

  - Add your R script to the Git staging area by running the following command in the terminal:
`git add "A simple script.R"` This command moves the file from your working directory into the staging area, preparing it for the next commit.

  - Confirm that it has been staged for commit by running `git status` again.

  - Commit your changes to the local repository by running the following command in the terminal:
 `git commit -m "Add A simple script.R"`

  - Verify that there are no outstanding changes by running  `git status` again.

  - Push your changes to the remote repository by running the following command in the terminal: `git push origin main`


## Adding More Scripts and Exploring More Git Features

Now that you've added a simple script to your repository, let's expand your project with a more complex script and learn more Git features along the way.

- Open a new script in R and name it calculator.R.
- Write the following R script in the file:
```r
# -- This script acts as a basic calculator. You can use it to add, subtract,   multiply, and divide two numbers.

  # - 1. Define the numbers/variables
  # Feel free to enter any numbers you like
  num1 <- 100
  num2 <- 2
  
  # - 2. Perform calculations
  
    add <- num1 + num2
    print(add)

    substract <- num1 - num2
    print(substract)
    
    multiply <- num1 * num2
    print(multiply)
    
    divide <- num1 / num2
    print(divide)
```
## Step 8: Add and Commit the Calculator Script

After creating your calculator.R script with the basic calculator functions, you'll want to track these changes using Git:

1. In the terminal, type `git status` to see the new untracked file (calculator.R).
2. To stage this new file, type `git add calculator.R`. This command moves the file from your working directory into the staging area, preparing it for the next commit.
3. Confirm that the file is staged for the commit by typing `git status` again. The file should appear under "Changes to be committed".
4. Commit the staged file to your local repository by typing `git commit -m "Add calculator.R"`. The message inside the quotes should be concise yet descriptive of the changes made.
5. Finally, push your committed changes to the remote GitHub repository with `git push origin main`. This updates the remote repository with your local changes.

## Step 9: Branching, Editing, and Merging
Branching in Git allows you to diverge from the main line of development and work on new features or bug fixes without affecting the main project. 
Here's how to use branches:

### Creating a New Branch:
Create a new branch by typing git branch new-feature in the terminal, replacing new-feature with the name of your branch, such as calculator-enhancements 1git branch add-modulo-to-calculator`.
Switch to your new branch with git checkout new-feature `git checkout add-modulo-to-calculator`. You are now in a new working environment separate from the main branch (usually called main).

### Editing Files in the New Branch:
With your new branch checked out, open the calculator.R file.

Make some changes to the file. For example, add a new function that calculates the remainder (modulo) of two numbers:

Copy code
```r
modulo <- num1 %% num2
print(modulo)
```

Save your changes to the file.

### Adding and Committing Changes in the New Branch:

After editing, go back to the terminal and type git status to see your changes.
Stage your changes with `git add calculator.R`.
Commit the changes with `git commit -m "Add modulo function to calculator"`.
Push your branch to GitHub with git push -u origin new-feature `git push -u origin add-modulo-to-calculator`.

### Merging Your Changes Back to the Main Branch:
Before merging, switch back to your main branch with `git checkout main`.
Make sure your main branch is up to date by pulling the latest changes with `git pull origin main`.
Now, merge your feature branch into the main branch with git merge new-feature `git merge add-modulo-to-calculator`.
If there are no conflicts, your changes will be merged successfully. If there are conflicts, you'll need to resolve them manually.
After the merge, push the updated main branch to GitHub with `git push origin main`.

### Deleting the Feature Branch (Optional):
Once your feature has been successfully merged and you no longer need the branch, you can delete it:

To delete the branch locally, type git branch -d new-feature `git branch -d add-modulo-to-calculator`.
To delete the branch from GitHub, type git push origin --delete new-feature `git push origin --delete add-modulo-to-calculator`.




# Connecting an existing R project to GitHub

Step 1: 

  - Open your R project.
  - Go to Tools > Version Control > Project Setup…

<br> <!-- HTML line break -->
  <img src="images/Step1 Project Steup.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 2: 

  - Set Version control system to ‘Git’.
  - A dialog box will open to confirm New Git Repository. Select Yes.
  - A dialog box will follow asking to Confirm Restart RStudio. Select Yes.

<br> <!-- HTML line break -->
  <img src="images/Step2 Set to Git.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 3: 

  - R would have restarted, and you will be able to see a tab named Git in the same on the top right corner of your Rstudio console. 
  
<br> <!-- HTML line break -->
  <img src="images/Step3 Git.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

  - The contents of your R project will appear on that window, with a question mark next to it. Click on the box and the question mark will change to a green A. This will ‘stage’ that ‘change’ in your Git repository.

- Select all of the items from that list and click on Commit. 

<br> <!-- HTML line break -->
  <img src="images/Step3 Stage.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 4: 

-	You will now see a new dialogue box that allows you to review the changes.  
-	Enter a short but descriptive comment summarising the action you are performing and select commit.
-	The Git Commit dialogue box will open indicating which items have been committed. Press close and your Git tab in R studio should now be clear, as all changes are now committed.

<br> <!-- HTML line break -->
  <img src="images/Step4 comment and commit.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 5: 

  - Go to GitHub and create a new repository. Recommend using the same name as the R project you are planning to connect to GitHub. 
- Once your repository is created, copy the code under the header ‘…or push an existing repository from the command line’

<br> <!-- HTML line break -->
  <img src="images/Step5 copy.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Step 6: 

-	Go back to R and click on Terminal, paste the lines of code copied from GitHub and press Enter.
<br> <!-- HTML line break -->
  <img src="images/Step6 terminal.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

Now go back to GitHub and you should be able to see all of the contents of your R project on GitHub :)

<br> <!-- HTML line break -->
  <img src="images/Completed repo.png" alt="Alt text" width="500">
<br> <!-- HTML line break -->
<br> <!-- HTML line break -->

  
