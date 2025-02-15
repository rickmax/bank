# Bankmax

## The Bankmax is a backend application to test bank operations like deposit, transfer and withdraw.

## Features
* Abstract Modules to busines roles
* Autorization and Autentication roles
* Queues and Backgroud Jobs with Sidekiq & Redis
* Advanced queries with ElasticSearch
* JavaScript to relatime changes view
* Internationalization
* Automatized tests
* Setup docker

## Business Roles
* Transactions tax
    - Transfers weekdays business hours = R$ 5,00;
    - Transfers weekdays non business hours = R$ 7,00;
    - Transfers when amount greater than a thousand reals = R$ 15,00;

### Ruby version
    2.6.6
### Rails version
    5.2.4
### System dependencies
    postgresql
    elasticksearch
    sidekick
    redis
### Database creation
    rails db:create db:migrate
### How to run the test suite
    bundle exec rspec
### Setup with docker-compose
* Docker
* docker-compose
    $ docker-compose up --build

### Deploy
    heroku
### Application links
* Demo:  https://bankmax.herokuapp.com 
* Source:    https://github.com/rickmax/bankmax
* Development [Henrique Max](https://github.com/rickmax)
