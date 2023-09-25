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
