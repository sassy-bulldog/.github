# Governance Guidelines

This document outlines the governance process for making changes to workflows
and language-specific files within our GitHub organization.
These guidelines ensure that all changes are reviewed and approved by the
appropriate parties to maintain the quality and integrity of our projects.

## Table of Contents

1. [Workflow Changes](#workflow-changes)
2. [Language-Specific Files](#language-specific-files)
3. [Approval Process](#approval-process)
4. [Pull Request Guidelines](#pull-request-guidelines)

## Workflow Changes

All changes to workflows, including Continuous Integration (CI) and Continuous
Deployment (CD) pipelines, must go through the Target Steering Committee.
This ensures that any modifications to the workflows are thoroughly reviewed and
align with the organization's standards and best practices.

### Steps for Workflow Changes

1. **Propose Change**: Create a detailed proposal for the workflow change.
2. **Submit Pull Request**: Submit a pull request with the proposed changes.
3. **Review by Target Steering Committee**: The Target Steering Committee will
review the pull request.
4. **Approval**: Upon approval, the changes can be merged into the main branch.

## Language-Specific Files

Changes to language-specific files must be peer-reviewed by subject matter
experts (SMEs) in the appropriate language.
This ensures that the changes are technically sound and adhere to the best
practices of the respective programming language.

### Steps for Language-Specific Changes

1. **Propose Change**: Create a detailed proposal for the language-specific change.
2. **Submit Pull Request**: Submit a pull request with the proposed changes.
3. **Peer Review by SMEs**: The pull request will be reviewed by subject matter
experts in the relevant language.
4. **Approval**: Upon approval, the changes can be merged into the main branch.

## Approval Process

The approval process for both workflow changes and language-specific files
involves the following steps:

1. **Proposal**: Clearly document the proposed changes and the rationale behind them.
2. **Pull Request**: Submit a pull request with the proposed changes.
3. **Review**: The appropriate reviewers (Target Steering Committee for
workflows, SMEs for language-specific files) will review the pull request.
4. **Feedback**: Address any feedback or requested changes from the reviewers.
5. **Approval**: Once the reviewers are satisfied, they will approve the pull request.
6. **Merge**: The approved changes can be merged into the main branch.

## Pull Request Guidelines

To ensure consistency and quality, all pull requests must adhere to the
following guidelines:

1. **Conventional Commit Standards**: Pull request titles must follow
[Conventional Commit](https://www.conventionalcommits.org/en/v1.0.0/) standards.
2. **Draft Status**: Pull requests should start in a draft status and not be
submitted for review until all workflow checks have passed, including unit tests
and linting.
3. **Workflow Checks**: Ensure that all automated checks, such as unit tests and
linting, pass before submitting the pull request for review.

By following these guidelines, we ensure that all changes are properly vetted
and maintain the high standards of our projects.
If you have any questions about the governance process, please reach out to the maintainers.

---

These guidelines apply to all repositories within our GitHub organization.
