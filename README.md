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

### Deploymen
    heroku
### Application links
* Demo:  https://bankmax.herokuapp.com 
* Source:    https://github.com/rickmax/bankmax
* Development [Henrique Max](https://github.com/rickmax)
