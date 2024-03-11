# Using Git with Python in Visual Studio Code: A Step-by-Step Guide

This guide will help you integrate Git with your Python projects in VS Code, including creating a new project and connecting an existing project to GitHub.This guide will take you through using Git with Python projects in Visual Studio Code, from cloning a repository to pushing changes back to GitHub. We'll work through practical examples, including script creation and modification, to help you understand the Git workflow within the context of Python development.

# Creating a New Python Project and Connecting to GitHub

## Step 1: Create a New Repository on GitHub

1. Go to GitHub.com and log in to your account.
2. Navigate to your home page and click on the "Repositories" tab.
3. Click on the "New" repository button:


![Create repository image 1](/GitHub-For-Python/images/create-repo-1.png)


4. Fill in the details and click "Create Repository button at the bottom:


![Create repository image 2](/GitHub-For-Python/images/create-repo-2.png)


## Step 2: Clone the Repository

1. Once your repository has been created, navigate to your newly created repository on GitHub.
1. Click on the "Code" button and copy the repository URL to your clipboard.


![Copy repo url](/GitHub-For-Python/images/repo-url.png)


1. Open Visual Studio Code.
2. Open the integrated terminal in Visual Studio Code by selecting View > Terminal.
3. Clone the Git repository by running the command `git clone [Repository URL]` in the terminal you just opened. 
   Replace `[Repository URL]` with the URL you copied earlier.

    ![cloning repo](/GitHub-For-Python/images/cloning-repo.png)

4. Open the cloned repository folder in Visual Studio Code by selecting File > Open Folder.


## Step 3: Create and Add a New Python Script (Hello, World!)

1. In VS Code, create a new file named hello_world.py. 

2. Write the following Python script in the file:

```python
# This is a simple Python script that prints "Hello, World!" to the console.
print("Hello, World!")
```

3. Save the file in your project directory.


## Step 4: Add the New Script to the Git Repository

1. In the terminal, run the command `git status` in the terminal to see the untracked files.

2. Add your Python script to the Git staging area by running the following command in the terminal:
`git add hello_world.py.` This command moves the file from your working directory into the staging area, preparing it for the next commit.

3. Confirm that it has been staged for commit by running `git status` again.


## Step 5: Commit Your Changes

1. Commit your changes to the local repository by running the following command in the terminal:
 `git commit -m "Add Hello World script"`
2. Verify that there are no outstanding changes by running  `git status` again.


## Step 6: Push Your Changes to GitHub
Push your changes to the remote repository by running the following command in the terminal:
    `git push origin main`


# Adding More Scripts and Exploring More Git Features

Now that you've added a simple script to your repository, let's expand your project with a more complex script and learn more Git features along the way.

## Step 7: Create a Basic Calculator Script

1. In Visual Studio Code, create a new file named calculator.py.

Write the following Python script in the file:
```python
# This script acts as a basic calculator that can add, subtract, multiply, and divide two numbers.

def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "Undefined"
    return x / y

# Example usage
num1 = 5
num2 = 3

print(f"{num1} + {num2} = {add(num1, num2)}")
print(f"{num1} - {num2} = {subtract(num1, num2)}")
print(f"{num1} * {num2} = {multiply(num1, num2)}")
print(f"{num1} / {num2} = {divide(num1, num2)}")
```

2. Save the file in your project directory.


## Step 8: Add and Commit the Calculator Script

After creating your calculator.py script with the basic calculator functions, you'll want to track these changes using Git:

1. In the terminal, type `git status` to see the new untracked file (calculator.py).
2. To stage this new file, type `git add calculator.py`. This command moves the file from your working directory into the staging area, preparing it for the next commit.
3. Confirm that the file is staged for the commit by typing `git status` again. The file should appear under "Changes to be committed".
4. Commit the staged file to your local repository by typing `git commit -m "Add basic calculator script"`. The message inside the quotes should be concise yet descriptive of the changes made.
5. Finally, push your committed changes to the remote GitHub repository with`git push origin main`. This updates the remote repository with your local changes.

## Step 9: Branching, Editing, and Merging
Branching in Git allows you to diverge from the main line of development and work on new features or bug fixes without affecting the main project. 
Here's how to use branches:

### Creating a New Branch:

1. Create a new branch by typing `git branch new-feature` in the terminal, replacing new-feature with the name of your branch, such as `calculator-enhancements`.
2. Switch to your new branch with `git checkout new-feature`. You are now in a new working environment separate from the main branch (usually called main or main).

### Editing Files in the New Branch:
With your new branch checked out, open the calculator.py file in VS Code.

1. Make some changes to the file. For example, add a new function that calculates the remainder (modulo) of two numbers:

```python
Copy code
def modulo(x, y):
    return x % y
```

2. Save your changes to the file in VS Code.

### Adding and Committing Changes in the New Branch:

1. After editing, go back to the terminal and type `git status` to see your changes.
2. Stage your changes with `git add calculator.py`.
3. Commit the changes with `git commit -m "Add modulo function to calculator"`.
4. Push your branch to GitHub with git push -u origin new-feature.


### Merging Your Changes Back to the Main Branch:

1. Before merging, switch back to your main branch with `git checkout main`.
2. Make sure your main branch is up to date by pulling the latest changes with `git pull origin main`.
3. Now, merge your feature branch into the main branch with `git merge new-feature`.
4. If there are no conflicts, your changes will be merged successfully. If there are conflicts, you'll need to resolve them manually in Visual Studio Code. 
5. After the merge, push the updated main branch to GitHub with `git push origin main`.


### Deleting the Feature Branch (Optional):
Once your feature has been successfully merged and you no longer need the branch, you can delete it:

1. To delete the branch locally, type `git branch -d new-feature`.
2. To delete the branch from GitHub, type `git push origin --delete new-feature`.


# Note on using VS Code's Git Integration:

While this guide emphasizes command-line Git operations, Visual Studio Code provides a user-friendly Git interface. 
Once you're familiar with basic Git commands, using VS Code's integrated Git features can streamline your workflow. 
These features allow easy staging, committing, branch switching, and more, enhancing productivity.

However, understanding the command-line basics remains essential for troubleshooting and complex situations. 
We recommend a combined approach: use VS Code's GUI for routine tasks and the command line when necessary. 