# .github - a hidden gem in repository management

All github meta files are stored here; all workflows are automatically updated from here via a pull-request.

You can read more about this feature and its supported functionality [here](https://docs.github.com/en/github/building-a-strong-community/creating-a-default-community-health-file#supported-file-types).

## Why?

I learned about `.github` repository during my exploration of how the [terraform-aws-modules organization](https://github.com/terraform-aws-modules) was setup on Public GitHub. I have been thinking about ways to reduce copy-pasting between similar repositories for several years.

## Shared Workflows

To minimize maintenance of governance and standards, this repo's workflows are all shared workflows.
***We need more documentation on these***

This means that other repositories may use simplified calls to this repo's workflows, and if we enhance the governance / standards here the maintenance in other repo's will be minimal.

The following workflows should be included in every Repository in this organization:
1.  [![Issue & PR Maintenance](https://github.com/jaffa-nj/.github/actions/workflows/stale.yml/badge.svg)](https://github.com/jaffa-nj/.github/actions/workflows/stale.yml)
    - This automates marking, locking, and eventually closing stale Issues and Pull-Requests every night for a repository
2.  [![Repository Governance](https://github.com/jaffa-nj/.github/actions/workflows/repo-gov.yml/badge.svg)](https://github.com/jaffa-nj/.github/actions/workflows/repo-gov.yml)
    - Ensures that Governance standards for the repository and branch-protection rules have been followed.
3.  [!['Code-Owners are Team(s)'](https://github.com/jaffa-nj/.github/actions/workflows/codeowners.yml/badge.svg)](https://github.com/jaffa-nj/.github/actions/workflows/codeowners.yml)
    - Requires that the [CODEOWNERS](CODEOWNERS) file contains references to organizational teams - **not individual users**
3.  [!['Conventional Commits'](https://github.com/jaffa-nj/.github/actions/workflows/conventional-commits.yml/badge.svg)](https://github.com/jaffa-nj/.github/actions/workflows/conventional-commits.yml)
    - Requires that all Pull requests follow [Conventional Commit Standards](https://www.conventionalcommits.org/en/v1.0.0/)
4.  [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/jaffa-nj/.github/main.svg)](https://results.pre-commit.ci/latest/github/jaffa-nj/.github/main)
5.  [![Release](https://github.com/jaffa-nj/.github/actions/workflows/release.yml/badge.svg)](https://github.com/jaffa-nj/.github/actions/workflows/release.yml)
    - If the all commits have followed [Conventional Commit Standards](https://www.conventionalcommits.org/en/v1.0.0/), this automates updating the [CHANGELOG](CHANGELOG.MD) and the creation of a GitHub release with release notes.
