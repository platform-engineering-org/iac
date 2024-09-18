# iac

## Badges

| Badge                   | Description          | Service      |
| ----------------------- | -------------------- | ------------ |
| ![Renovate][1]          | Dependencies         | Renovate     |
| ![Pre-commit][2]        | Static quality gates | pre-commit   |
| ![Devcontainer][3]      | Local DEV Env        | devcontainer |

## IaC - Infrastructure as Code

This repo consists of Terraform modules which manages infrastructure like:

- AWS resources
- Self-hosted Gitlab runners
- Gitlab and GitHub permissions/policies
- Self-hosted Renovate runners

Terragrunt is used to manage the following environments:

- dev
- ci
- prod

[1]: https://img.shields.io/badge/renovate-enabled-brightgreen?logo=renovate
[2]: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit
[3]: https://img.shields.io/static/v1?label=devcontainer&message=enabled&logo=visualstudiocode&color=007ACC&logoColor=007ACC
