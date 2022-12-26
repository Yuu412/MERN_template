# フロントエンドのサービス名
front=front
# バックエンドのサービス名
backend=backend
# データベースのサービス名
db=mongo

up:
	@echo "================================="
	@echo "コンテナの起動（dev環境）"
	@echo "================================="
	@sleep 5
	docker-compose down
	docker compose up -d

build:
	@echo "================================="
	@echo "コンテナの構築 & 起動（dev環境）"
	@echo "================================="
	@sleep 5
	docker-compose down
	docker compose up -d --build

in-front:
	@echo "================================="
	@echo "Reactのコンテナに入ります"
	@echo "================================="
	docker-compose exec $(front) bash

in-backend:
	@echo "================================="
	@echo "Express(node.js)のコンテナに入ります"
	@echo "================================="
	docker-compose exec $(backend) bash

in-db:
	@echo "================================="
	@echo "mongo.dbのコンテナに入ります"
	@echo "================================="
	docker-compose exec $(db) bash