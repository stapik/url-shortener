DEV_YAML=docker-compose-dev.yaml
PROD_YAML=docker-compose-prod.yaml

hello:
	echo "Commands: run_dev, run_prod, dev_ps, prod_ps"
run_dev:
	docker-compose -f ${DEV_YAML} up --build -d
run_prod:
	docker-compose -f ${PROD_YAML} up --build -d
dev_ps:
	docker-compose -f ${DEV_YAML} ps
prod_ps:
	docker-compose -f ${PROD_YAML} ps

.PHONY: hello