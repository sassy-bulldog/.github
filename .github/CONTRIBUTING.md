# Contributing Guidelines

Thank you for considering contributing to our project!
To ensure a smooth and efficient workflow, please follow these guidelines.

## Table of Contents

- [Contributing Guidelines](#contributing-guidelines)
  - [Table of Contents](#table-of-contents)
  - [Setting Up Your Development Environment](#setting-up-your-development-environment)
    - [Installing Visual Studio Code](#installing-visual-studio-code)
    - [Installing Visual Studio](#installing-visual-studio)
    - [R](#r)
    - [Python](#python)
    - [dotnet](#dotnet)
    - [Terraform](#terraform)
    - [OpenTofu](#opentofu)
  - [Using Virtual Environments](#using-virtual-environments)
  - [Environment Variables](#environment-variables)
  - [Supporting Tools](#supporting-tools)
    - [Windows Subsystem for Linux (WSL)](#windows-subsystem-for-linux-wsl)
    - [Pre-commit Hooks](#pre-commit-hooks)
  - [Repository Naming Strategy](#repository-naming-strategy)
    - [1. Naming Structure](#1-naming-structure)
    - [2. Components of the Naming Structure](#2-components-of-the-naming-structure)
      - [2.1 Scope](#21-scope)
      - [2.2 Purpose](#22-purpose)
      - [2.3 Project](#23-project)
      - [2.4 Language](#24-language)
    - [3. Examples](#3-examples)
    - [4. Best Practices](#4-best-practices)
    - [5. Conclusion](#5-conclusion)
  - [Standards of Practice: Repository Workflows](#standards-of-practice-repository-workflows)
    - [Workflows](#workflows)
      - [1. Codeowners](#1-codeowners)
      - [2. PR Controls](#2-pr-controls)
      - [3. Stale](#3-stale)
      - [4. Release](#4-release)
      - [5. Unit Tests](#5-unit-tests)
    - [Configuration Files](#configuration-files)
      - [1. Pre-commit](#1-pre-commit)

## Setting Up Your Development Environment

Before cloning any repos or doing any work locally,
if you are running Windows it is recommended that you
create a `source` directory in your User Profile (Home)
directory and enable Linux style case-sensitivity for
file names before working locally.

All repos should be cloned to the `source` directory
to ensure that Windows does not inadvertantly create new
files on check-ins that are really just the original files
with a different case in the file name.

You can easily do this by running this code in your
command prompt:

```dos
cd %USERPROFILE%
md source
fsutil.exe file setCaseSensitiveInfo "%USERPROFILE%\source" enable
```

### Installing Visual Studio Code

To install Visual Studio Code, follow the instructions provided by Microsoft on
the [Visual Studio Code download page](https://code.visualstudio.com/download).

### Installing Visual Studio

To install Visual Studio, follow the instructions provided by Microsoft on
[the Visual Studio download page](https://visualstudio.microsoft.com).

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
Follow the instructions in the
[official WSL installation guide](https://learn.microsoft.com/en-us/windows/wsl/install) to set it up.

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

- **dotnet**: .NET
  - **SSDT**: SQL Server Data Tools
  - **SSIS**: SQL Server Integration Services
- **R-lang**: R (to avoid conflict with the letter "R" in common words)
- **py**: Python
- **js**: JavaScript
- **java**: Java
- **csharp**: C# (or **cs**)
- **golang**: Go (to avoid confusion with common words)
- **rb**: Ruby
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
- **team-infra-aws**: A repository for AWS infrastructure code managed by a
specific team.
- **personal-scripts-python**: A personal repository containing Python scripts.

### 4. Best Practices

- **Consistency**: Always adhere to the structure to ensure consistency across
all repositories.
- **Simplicity**: Keep names concise yet descriptive enough to convey their
purpose clearly.
- **Avoid Redundancy**: Do not include unnecessary components. If a project is
clear from the context, omit it from the name.

### 5. Conclusion

Adhering to this repository naming strategy will enable easier navigation and
management of repositories, especially in environments with limited search
capabilities.
Ensure all team members are familiar with and apply this strategy when creating
new repositories.

## Standards of Practice: Repository Workflows

To maintain consistency, quality, and efficiency across all repositories, certain
workflows must be implemented and managed centrally.
These workflows ensure that code reviews, pull requests, and other critical
processes are handled in a standardized manner.
All workflows should be maintained through the `repo-governance` folder
of the [.github](https://github.com/sassy-bulldog/.github) repository.

In general, there should be five workflows in every repository:

1. [Codeowners](#1-codeowners)
2. [PR Controls](#2-pr-controls)
3. [Stale](#3-stale)
4. [Release](#4-release)
5. [Unit Tests](#5-unit-tests)

Each of these workflows serves a specific purpose and must be tailored or
standardized as outlined below.

Additionally, each repository should have configuration files for:

1. [Pre-commit Workflow](#1-pre-commit)

### Workflows

#### 1. Codeowners

**Standard:** All repositories must implement a `CODEOWNERS` workflow.
**Purpose:** To ensure that designated code owners have the appropriate
permissions to review and approve pull requests (PRs).
**Rationale:** This practice maintains code quality and consistency by ensuring
that only authorized individuals can approve changes to the codebase.

#### 2. PR Controls

**Standard:** A `PR-controls` workflow is required in every repository.
**Purpose:** To enforce the use of descriptive and standardized PR titles, as
defined by the [Conventional Commits](https://www.conventionalcommits.org/)
specification.
**Rationale:** This standard promotes a clear and consistent commit history,
which is crucial for maintaining an understandable and maintainable codebase.

#### 3. Stale

**Standard:** Repositories must include a `stale` workflow.
**Purpose:** To automatically close pull requests and issues that have remained
inactive for a predefined period.
**Rationale:** This workflow helps keep the repository focused on active,
relevant work and reduces clutter from outdated or irrelevant tasks.

#### 4. Release

<!--
It might be nice to figure out if we can have release please:
- Build / Compile Code
- Run Unit Tests
- Then perform release

This would eliminate #5 from being a separate workflow and standardize it
such that every repo can use the same release action, but have different configs
much like the pre-commit config works
-->
**Standard:** A `release` workflow must be implemented in all repositories.
**Purpose:** To automate the creation of GitHub releases and manage the
promotion and deployment of code to appropriate environments.
**Rationale:** This workflow streamlines the release process, ensuring that new
versions of the software are consistently and reliably deployed.

#### 5. Unit Tests

**Standard:** Repositories must include a `unit-tests` workflow.
**Purpose:** To automatically run tests that verify the correctness of the code.
**Rationale:** Automated testing is essential for catching bugs and ensuring
that new changes do not break existing functionality.

### Configuration Files

#### 1. Pre-commit

`.pre-commit-config.yaml`

**Standard:** Each repository should have a unique `pre-commit` workflow
tailored to its specific needs.
**Purpose:** To enforce code linting, formatting, and validation before commits
are accepted.
**Rationale:** By ensuring that code meets the project's standards before it is
committed, this practice helps maintain a high level of code quality and reduces
the likelihood of introducing errors.
