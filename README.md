# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby '2.6.1'

* System dependencies

* Configuration
*rack-cors configured for universal cross origin reference handling*
gem 'rack-cors'
1. within ./config/initializers/cors.rb: see configuration code for details

* Database creation
*postgresql database*
gem 'pg', '~> 1.1'

run the command 'rails db:create'
check to see that database has been created with postgres app

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
