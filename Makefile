.PHONY: phpstan php-cs-fixer composer-valid doctrine fix analyse install-quality local

local:
	symfony server:start -d
	yarn run dev-server

install-quality:
	cp bin/pre-commit .git/hooks/pre-commit

phpstan:
	php vendor/bin/phpstan analyse -c phpstan.neon

fix:
	php vendor/bin/php-cs-fixer fix

composer-valid:
	composer valid

doctrine:
	php bin/console doctrine:schema:valid --skip-sync

twig:
	php bin/console lint:twig templates

yaml:
	php bin/console lint:yaml config

container:
	php bin/console lint:container

analyse: twig yaml composer-valid container doctrine phpstan
