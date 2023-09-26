.PHONY: all clean test

ENV := dev
TERRAGRUNT_CMD = cd live/${ENV} && terragrunt run-all --terragrunt-non-interactive

.PHONY: tf/init
tf/init:
	${TERRAGRUNT_CMD} init

.PHONY: tf/plan
tf/plan:
	${TERRAGRUNT_CMD} plan -out tfplan

.PHONY: tf/graph
tf/graph:
	${TERRAGRUNT_CMD} graph

.PHONY: tf/apply
tf/apply:
	${TERRAGRUNT_CMD} apply

.PHONY: tf/destroy
tf/destroy:
	${TERRAGRUNT_CMD} destroy -terragrunt-log-level debug

tf/apply/audit:
	cd live/${ENV}/audit && terragrunt run-all --terragrunt-non-interactive apply -auto-approve

tf/apply/gitlab-permissions:
	cd live/${ENV}/gitlab-permissions && terragrunt run-all --terragrunt-non-interactive apply -auto-approve

tf/apply/gitlab-runners:
	cd live/${ENV}/gitlab-runners && terragrunt run-all --terragrunt-non-interactive apply -auto-approve

tf/apply/oidc:
	cd live/${ENV}/oidc && terragrunt run-all --terragrunt-non-interactive apply -auto-approve

tf/init/renovate-runners:
	cd live/${ENV}/renovate-runners && terragrunt run-all --terragrunt-non-interactive init

tf/plan/renovate-runners:
	cd live/${ENV}/renovate-runners && terragrunt run-all --terragrunt-non-interactive plan

tf/apply/renovate-runners:
	cd live/${ENV}/renovate-runners && terragrunt run-all --terragrunt-non-interactive apply -auto-approve

tf/import/renovate-runners:
	cd live/${ENV}/renovate-runners && terragrunt import github_repository.repository renovate-runner

tf/state/renovate-runners:
	cd live/${ENV}/renovate-runners && terragrunt state show github_repository.repository

tf/init/github-automerge:
	cd live/${ENV}/github-automerge && terragrunt run-all --terragrunt-non-interactive init

tf/plan/github-automerge:
	cd live/${ENV}/github-automerge && terragrunt run-all --terragrunt-non-interactive plan

tf/apply/github-automerge:
	cd live/${ENV}/github-automerge && terragrunt run-all --terragrunt-non-interactive apply -auto-approve
