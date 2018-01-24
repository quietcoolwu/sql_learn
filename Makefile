up:
	@docker-compose -f ${PWD}/misc/compose/docker-compose-test.yml up -d

down:
	@docker-compose -f ${PWD}/misc/compose/docker-compose-test.yml down -v

logs:
	@docker-compose -f ${PWD}/misc/compose/docker-compose-test.yml logs | less
