comp:
	@docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

install:
	@docker-compose run --rm composer install

up:
	@docker-compose up -d --build server 

art:
	@docker-compose run --rm artisan migrate

down:
	@docker-compose down