%:
	@:

up-%:
	docker-compose -f docker-compose.yml -f docker-compose.$*.yml up -d $(filter-out $@,$(MAKECMDGOALS))

down-%:
	docker-compose -f docker-compose.yml -f docker-compose.$*.yml down $(filter-out $@,$(MAKECMDGOALS))

restart-%:
	docker-compose -f docker-compose.yml -f docker-compose.$*.yml restart $(filter-out $@,$(MAKECMDGOALS))
