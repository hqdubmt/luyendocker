image-node-build:
	# Bước 1: Build image từ Dockerfile và gắn tag (tên) cho nó
	docker build -t hqdu/dockertest:latest -f Dockerfile .
#image-node push:
	# Bước 2: Đẩy image đã build lên Docker Hub
	docker push hqdu/dockertest:latest

image-node-push: image-node-build
	# Bước gop 1va 2: Build image từ Dockerfile và Đẩy image đã build lên Docker Hub
	docker push hqdu/dockertest:latest


image-node-pull:
	# Bước 3: Kéo image từ Docker Hub về máy local
	docker pull hqdu/dockertest:latest

down-all:
	docker compose down

dev:
	docker compose -f docker-compose.dev.yml up -d

dev-build:
	docker compose -f docker-compose.dev.yml up -d --build

dev-down:
	docker compose -f docker-compose.dev.yml down

dev-logs:
	docker compose -f docker-compose.dev.yml logs -f

prod:
	docker compose -f docker-compose.prod.yml up -d

prod-build:
	docker compose -f docker-compose.prod.yml up -d --build

prod-down:
	docker compose -f docker-compose.prod.yml down

prod-logs:
	docker compose -f docker-compose.prod.yml logs -f

ps:
	docker ps