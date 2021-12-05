# Symfony starterkit

A custom symfony starterkit.

Dependencies : 

* PHP 8
* Symfony 6
* Symfony CLI  
* Docker
* PHP_CodeSniffer

# How to use 

Clone the project : 

```
git clone git@github.com:PublicVar/symfony-starterkit.git project-name
cd project-name
docker-composer up
```

```
symfony composer install
symfony server:start
```

# Run quality tool

```
vendor/bin/phpcs
yarn run linter
vendor/bin/phpstan analyse src tests migrations
```
