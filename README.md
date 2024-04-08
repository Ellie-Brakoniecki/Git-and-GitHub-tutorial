# Git and GitHub Tutorial Repository Guide

Welcome to this repository dedicated to practicing and understanding Git and GitHub, tailored specifically for Python and R developers using Visual Studio Code. This README aims to provide you with all the necessary information to effectively use this repository, whether you're a beginner looking to grasp the basics or an intermediate user aiming to refine your skills.

## How to Use This Repository

This repository is designed as a tool to help enhance your understanding of Git and GitHub through practical application. To make the most out of this repository, follow these steps:

1. **Read the introduction** to Git and Github below. This is intended as a brief overview before getting some hands on practice in the tutorials. For deeper learning please see the `Duck book`:
 https://best-practice-and-impact.github.io/qa-of-code-guidance/version_control.html

2. **Navigate the Tutorials**: Inside, you will find structured directories for Python and R tutorials. Each tutorial is self-contained with its own set of instructions and exercises.

3. **Follow Along** with the step-by-step guides. Practice by making changes to the provided scripts or adding new ones as instructed.

4. **Commit Your Changes**: As you work through the tutorials, practice your Git skills by staging, committing, and pushing your changes.

5. **Branch Out**: Experiment with branching by creating new branches for different features or exercises. This will help you understand the workflow and the concept of branch management.


# Introduction to Git and GitHub

Git and GitHub are essential tools in software development, enabling version control and collaboration. Before looking at how they work, it's important to understand the concept of version control.

## Understanding Version Control

Version control is a system that keeps track of changes to files over time, so you can revisit specific versions later. It offers several benefits:

- **History Tracking**: Logs every change to your files, showing what changed, when, and by whom.
- **Collaboration**: Allows many people to work on the same project at the same time, with tools to merge their work smoothly.
- **Mistake Correction**: Lets you go back to earlier versions of your project to fix mistakes.

Using version control is fundamental in managing a project's development efficiently and safely.

## Why Use Git?
Git is the leading version control system, designed to efficiently handle projects of any size with speed. Its key features include:

- **Version Control**: Maintains a detailed history of your project, enabling you to access and restore any past version.
- **Collaboration**: Enables multiple contributors to work together seamlessly, merging changes without conflict.
- **Backup and Restore**: Every project version is saved, protecting against data loss.
- **Local Operation**: Works on your local computer, allowing you to work offline and have complete control over your project's history.

## Why Use GitHub?

GitHub builds upon Git's capabilities, providing a platform for collaborative project management, including:

- **Accessible Collaboration**: Hosts projects online, simplifying teamwork across locations.
- **Code Review**: Uses pull requests for proposing, reviewing, and merging changes, improving code quality.
- **Issue Tracking**: Offers tools for organizing tasks, bugs, and feature requests, keeping projects well-managed.
- **Open Source Community**: Encourages sharing and contributing to public projects, promoting collaboration in the open-source community.

## The Difference Between Git and GitHub

**Git** focuses on version control, allowing you to track changes and manage your project's evolution locally on your computer. 
Its main features include:
- Local change tracking
- Offline operation
- Branching for developing new features or fixing issues, which ensures the main project's integrity.

**GitHub** is a cloud-based service that enhances Git repositories with additional features for collaboration. 
Its main features include:
- Online hosting makes Git projects accessible from anywhere, enabling collaboration across diverse geographical locations.  
- Pull requests and code reviews for teamwork
- Issue tracking for project management.

In summary, **Git** provides the foundational infrastructure for version control, enabling developers to manage and track changes locally. **GitHub** expands on this by offering a platform for collaborative project management, making it easier to share and contribute to code across teams and the open-source world.

---

## Understanding Repositories

In the world of Git and GitHub, a "repository" or "repo" is essentially a digital directory or storage space where you can save your project files. Think of it like a folder on your computer, but with a few additional features.

Here's what makes repositories special:

- **History:** Every change or "commit" to the repository has a record. You can always look back and see who made what changes and when.
  
- **Branching:** You can create branches in a repository, which is like having parallel versions of your files. This is particularly useful when you want to develop a new feature without affecting the main project.
  
- **Collaboration:** Multiple people can collaborate on the same repository. They can propose changes, which can be reviewed and then merged into the main project.
  
- **Remote and Local:** With Git and GitHub, repositories can exist in two places – remotely (on GitHub's servers) and locally (on your computer). You can work on the local version of your project and then sync your changes with the remote version on GitHub.

When setting up a new project or joining an existing project, you'll often start by either creating a new repository or cloning an existing one to your local machine. As you develop your project, remember that the repository is more than just a storage space – it's a powerful tool for versioning, collaboration, and code management.

---

# Getting Started

## Checking if Git is Installed

If you're using the DAP, first open a Command Prompt window. Alternatively, if you're working in RStudio or VS Code, you can access their built-in terminals.

To verify if Git is installed, run the following command:

```bash
git --version
```
![git version image](images\image_1.PNG)


If Git is installed, this command will return the installed version number.

If it is not installed contact DAP support. 

---

## Setting Up Git

1. **Configure your identity**: Before you can start using Git, it's essential to identify yourself. This ensures that your commits (code changes) have your name and email associated with them.

    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    ```

   *Note*: It's good practice to use a consistent email address for both Git and GitHub. This helps in linking your commits to your GitHub profile.

2. **Verify your settings**: Once you've entered your details, you can check to make sure they've been saved correctly.

    ```bash
    git config --list
    ```
    
---    
    
## Setting Up GitHub

1. **Create an Account**: 
    - Navigate to [GitHub](https://github.com/).
    - Click on the "Sign Up" button, usually located at the top right corner of the page.
    - Follow the on-screen instructions to create your account. Remember to verify your email address to activate your account.

2. **Setup Your Profile**:
    - Once your account is created, navigate to your profile settings.
    - Here, you can add a profile picture, set a bio, and more. Filling out these details can help colleagues or collaborators recognize and connect with you on the platform.

3. **Create a New Repository**: 
    - After logging in, you'll find a '+' icon at the top right corner of your screen. Click on it and select 'New repository'.
    - Choose a name for your repository and provide a brief description.
    - Decide if you want this repository to be public (visible to everyone) or private (visible only to you and those you grant access to).
    - It's a good practice to initialize the repository with a README. This file serves as an introduction to what your project is about.
    - Click "Create repository".
    

4. **Clone the Repository**: 
    - To work on your project locally on your computer, you'll need to clone the repository.
    - Navigate to your new repository's main page.
    - Click on the 'Code' button. This should reveal a dropdown.
    - Ensure 'HTTPS' is selected and click on the clipboard icon to copy the repository URL.
    - Open your terminal or command prompt and navigate to where you want to download (or clone) the repository.
    - Type the following command:

    ```bash
    git clone [paste-the-copied-repository-url-here]
    ```

    - After pasting the URL, press 'Enter'. Your repository will be downloaded to your local machine and you can begin working on it.
    
---
    
## Git Basics: Staging, Committing, and Pushing Changes

Before diving into your first commit, it's essential to understand the three primary steps of Git's workflow: staging, committing, and pushing changes. This workflow ensures you have control over which changes are saved and allows for effective collaboration with others.

### Staging Changes

Staging is the first step in the Git workflow. When you make changes to your files, Git recognizes those modifications. Before you can save your changes, you need to "stage" them. Staging is like preparing a list of changes you want to save.
Use the git add command followed by the filenames you want to stage. For staging all the changes in your directory, you can use:

```bash
git add .
```

### Committing Changes

Once you've staged your changes, you can "commit" them. Committing is the act of saving your staged changes along with a descriptive message.
The message should briefly describe what you've done. 
To commit your staged changes use the command: 

```bash
git commit -m "Your descriptive commit message here"
```
It's good practice to write clear and meaningful commit messages. This ensures that others (and your future self) can understand the history of the project.

### Pushing Changes

After committing your changes, they exist only on your local machine. To share these changes with others or to back them up on GitHub, you "push" them to a remote repository.

```bash
git push origin main
```

Note: origin refers to the remote repository you cloned from, and main is the branch you're pushing to. If your default branch is named differently (like master), replace main with your branch name.

By understanding these core commands and their roles in the Git workflow, you're on your way to managing your projects effectively and collaborating with others seamlessly.

---

## Making Your First Commit
After making some changes to the files in the repository, you'll want to save these changes using Git. Now that you understand the underlying concepts of staging, committing, and pushing, you can perform these actions:

Navigate to the repository's directory on your terminal or command prompt.

Type the following commands in sequence:
```bash
git add .
git commit -m "Description of your changes"
git push origin main
```

These commands stage your changes, save them with a message, and then upload (push) them to GitHub, so they reflect on your online repository.

---


# Conclusion and Further Learning
Understanding Git and GitHub is a continuous journey. These tools are rich with features designed to improve code management and collaboration. As you become more comfortable with the basics, explore advanced topics like branching strategies, code reviews, and automated deployments.

Remember, the best way to learn Git and GitHub is by using them. Start with small projects, experiment with different features, and collaborate with others. The more you use these tools, the more indispensable they will become in your development workflow.



---