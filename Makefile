up:
	sudo docker compose up -d
build:
	sudo docker compose build
laravel-install:
	sudo docker compose exec app composer create-project --prefer-dist laravel/laravel .
create-project:
	mkdir -p src
	@make build
	@make up
	@make laravel-install
	sudo docker compose exec app php artisan key:generate
	sudo docker compose exec app php artisan storage:link
	sudo docker compose exec app chmod -R 777 storage bootstrap/cache
	sudo docker compose exec app npm install
import:
	sudo docker exec -i asecx-db psql -U smooht smooht < smooht.sql
export:
	sudo docker exec -it asecx-db pg_dump -U smooht smooht > backup.sql
rebuild:
	sudo docker compose up -d --build
init:
#	sudo docker compose exec app chmod -R 777 vendor
#	sudo docker compose exec app chmod -R 777 node_modules
	sudo docker compose exec app composer install --ignore-platform-req=ext-http
	sudo docker compose exec app cp .env.example .env
	sudo docker compose exec app php artisan key:generate
	sudo docker compose exec app php artisan storage:link
	sudo docker compose exec app chmod -R 777 storage bootstrap/cache
	sudo docker compose exec app npm install
#	@make fresh
remake:
	@make destroy
	@make rebuild
stop:
	sudo docker compose stop
down:
	sudo docker compose down --remove-orphans
down-v:
	sudo docker compose down --remove-orphans --volumes
restart:
	@make down
	@make up
destroy:
	sudo docker compose down --rmi all --volumes --remove-orphans
ps:
	sudo docker compose ps
logs:
	sudo docker compose logs
logs-watch:
	sudo docker compose logs --follow
log-web:
	sudo docker compose logs web
log-web-watch:
	sudo docker compose logs --follow web
log-app:
	sudo docker compose logs app
log-app-watch:
	sudo docker compose logs --follow app
log-db:
	sudo docker compose logs postgres
log-db-watch:
	sudo docker compose logs --follow postgres
web:
	sudo docker compose exec web bash
app:
	sudo docker compose exec app bash
migrate:
	sudo docker compose exec app php artisan migrate
fresh:
	sudo docker compose exec app php artisan migrate:fresh --seed
seed:
	sudo docker compose exec app php artisan db:seed
dacapo:
	sudo docker compose exec app php artisan dacapo
rollback-test:
	sudo docker compose exec app php artisan migrate:fresh
	sudo docker compose exec app php artisan migrate:refresh
tinker:
	sudo docker compose exec app php artisan tinker
test:
	sudo docker compose exec app php artisan test
optimize:
	sudo docker compose exec app php artisan optimize
optimize-clear:
	sudo docker compose exec app php artisan optimize:clear
cache:
	sudo docker compose exec app composer dump-autoload -o
	@make optimize
	sudo docker compose exec app php artisan event:cache
	sudo docker compose exec app php artisan view:cache
cache-clear:
	sudo docker compose exec app composer clear-cache
	@make optimize-clear
	sudo docker compose exec app php artisan event:clear
dump-autoload:
	sudo docker compose exec app composer dump-autoload
ide-helper:
	sudo docker compose exec app php artisan clear-compiled
	sudo docker compose exec app php artisan ide-helper:generate
	sudo docker compose exec app php artisan ide-helper:meta
	sudo docker compose exec app php artisan ide-helper:models --nowrite
