up:
	@bash -x ./scripts/start_db_mq.sh || true

down:
	@bash -x ./scripts/stop_db_mq.sh || true
