dev-destroy:
	@terraform init -backend-config=env-dev/backend.tfvars
	@terraform destroy -auto-approve -var-file=env-dev/dev.tfvars -target=module.app
	@terraform destroy -auto-approve -var-file=env-dev/dev.tfvars -target=module.elasticache
	@terraform destroy -auto-approve -var-file=env-dev/dev.tfvars -target=module.vpc
