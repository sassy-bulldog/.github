# Contributing Guidelines

Thank you for considering contributing to our project!
To ensure a smooth and efficient workflow, please follow these guidelines.

## Table of Contents

1. [Setting Up Your Development Environment](#setting-up-your-development-environment)
    - [Visual Studio Code](#installing-visual-studio-code)
    - [Visual Studio](#installing-visual-studio)
    - [R](#r)
    - [Python](#python)
    - [.NET](#dotnet)
    - [Terraform](#terraform)
    - [OpenTofu](#opentofu)
2. [Using Virtual Environments](#using-virtual-environments)
3. [Environment Variables](#environment-variables)
4. [Supporting Tools](#supporting-tools)
    - [Windows Subsystem for Linux (WSL)](#windows-subsystem-for-linux-wsl)
    - [Pre-commit Hooks](#pre-commit-hooks)
5. [Repository Naming Strategy](#Rep)

## Setting Up Your Development Environment

### Installing Visual Studio Code

To install Visual Studio Code, follow the instructions provided by Microsoft [here](https://code.visualstudio.com/download).

### Installing Visual Studio

To install Visual Studio, follow the instructions provided by Microsoft [here](https://visualstudio.microsoft.com).

### R

1. Install R from [CRAN](https://cran.r-project.org/).
2. Install RStudio from [RStudio](https://www.rstudio.com/products/rstudio/download/).
3. Install necessary packages:

    ```r
    install.packages(c("dplyr", "ggplot2", "knitr"))
    ```

### Python

1. Install Python from [python.org](https://www.python.org/downloads/).
2. Install `pip` (if not included).
3. Create a virtual environment:

    ```sh
    python -m venv venv
    ```

4. Activate the virtual environment:
    - On Windows:

        ```sh
        .\venv\Scripts\activate
        ```

    - On Unix or MacOS:

        ```sh
        source venv/bin/activate
        ```

5. Install necessary packages:

    ```sh
    pip install -r requirements.txt
    ```

### dotnet

1. Install .NET SDK from [Microsoft](https://dotnet.microsoft.com/download).
2. Create a new project or open an existing one:

    ```sh
    dotnet new console -o MyApp
    cd MyApp
    ```

3. Restore dependencies:

    ```sh
    dotnet restore
    ```

### Terraform

1. Install Terraform from [HashiCorp](https://www.terraform.io/downloads.html).
2. Verify the installation:

    ```sh
    terraform version
    ```

### OpenTofu

1. Install OpenTofu from [OpenTofu](https://www.opentofu.com/downloads.html).
2. Configure OpenTofu for your development environment.

## Using Virtual Environments

For Python projects, it is highly recommended to use virtual environments to
manage dependencies.
This ensures that your project uses the correct versions of packages and avoids
conflicts with other projects.

To create a virtual environment:

```sh
python -m venv venv
```

To activate the virtual environment:

- On Windows:

    ```sh
    .\venv\Scripts\activate
    ```

- On Unix or MacOS:

    ```sh
    source venv/bin/activate
    ```

To deactivate the virtual environment:

```bash
deactivate
```

## Environment Variables

For managing environment variables, you can use a `.env` file.
This file should not be committed to version control.
Use the following format:

```bash
API_KEY=your_api_key
DATABASE_URL=your_database_url
```

Load these variables in your application using appropriate libraries:

- Python: `python-dotenv`
- R: `dotenv`

## Supporting Tools

### Windows Subsystem for Linux (WSL)

For a more consistent development environment,especially when working
with Unix-based tools, consider installing WSL.
Follow the instructions
[here](https://learn.microsoft.com/en-us/windows/wsl/install)
to set it up.

### Pre-commit Hooks

To ensure code quality and consistency, we use pre-commit hooks.
Install pre-commit and set up the hooks:

1. Install pre-commit:

    ```bash
    pip install pre-commit
    ```

2. Install the hooks:

    ```bash
    pre-commit install
    ```

This will automatically run checks on your code before each commit.

## Repository Naming Strategy

This document outlines the naming conventions to be followed for repositories in
our organization.
The goal is to create a standardized approach that allows for easy
identification and organization of repositories based on their scope, purpose,
project, and programming language.
This is especially important in environments where search capabilities are
limited to determining if a string is present in the repository name.

### 1. Naming Structure

The repository name should follow the structure below:

**`<scope>-<purpose>-<project>-<language>`**

### 2. Components of the Naming Structure

#### 2.1 Scope

The scope indicates the level at which the repository operates. Common examples include:

- **global**: For repositories that are used across multiple projects or by the
entire organization.
- **project**: For repositories specific to a single project.
- **team**: For repositories used by a particular team but not limited to a
single project.
- **personal**: For personal repositories that are not intended for broad use.

#### 2.2 Purpose

The purpose component clarifies the main function or role of the repository.
Examples include:

- **api**: For repositories containing API code or related resources.
- **frontend**: For repositories dealing with frontend or UI/UX code.
- **backend**: For repositories focused on backend logic or services.
- **infra**: For repositories related to infrastructure, including IaC
(Infrastructure as Code).
- **docs**: For repositories that primarily contain documentation.
- **scripts**: For repositories that contain utility scripts or automation.

#### 2.3 Project

The project component should refer to the specific project name or a relevant
abbreviation. This ties the repository to a particular initiative or product.
If the repository is not tied to a specific project, this component may be omitted.

Examples:

- **ProjectX**
- **Analytics**
- **MobileApp**

#### 2.4 Language

The language component refers to the primary programming language used in the
repository.
The identifiers should be unique and easily searchable to avoid conflicts with
common words. Examples include:

- **py**: Python
- **js**: JavaScript
- **java**: Java
- **csharp**: C# (or **cs**)
- **dotnet**: .NET
- **golang**: Go (to avoid confusion with common words)
- **rb**: Ruby
- **r-lang**: R (to avoid conflict with the letter "R" in common words)
- **cpp**: C++
- **ts**: TypeScript
- **php**: PHP
- **swift**: Swift
- **kotlin**: Kotlin
- **scala**: Scala
- **perl**: Perl
- **bash**: Bash/Shell scripts
- **html-css**: HTML/CSS
- **sql**: SQL
- **multi**: For repositories containing multiple languages

### 3. Examples

- **global-api-auth-py**: A global Python repository for API authentication logic.
- **project-frontend-website-js**: A JavaScript repository for the frontend of
the "Website" project.
- **team-infra
