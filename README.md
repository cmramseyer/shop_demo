# Shop Demo App

This is a demo App. It has an autocomplete search feature to look for products, user reviews and user comments, developed using Elasticsearch. The app simulates a payment process through an external credit card API. [Code here](https://github.com/cmramseyer/fake_credit_card_api). [Hosted here](http://162.243.107.4:8001). The API communication is performed through a gem. [Code here](https://github.com/cmramseyer/fake_credit_card_api_gem).  
  
[Link to demo](http://http://18.188.26.246/)  
User: linkedin@shopdemo.com  
Password: linkedin  


# Install

* `$ git clone https://github.com/cmramseyer/shop_demo.git`
* `$ cd shop_demo && bundle install`
* Create a `.env` file using `.env.example` template. Update `.env` with the right local environment variables
* `$ rake db:create && rake db:migrate && rake db:seed`
* `$ yarn install --check-files`
* `$ bin/webpack-dev-server`
* `$ rails s`


# Dependencies
* Bonsai Elasticsearch cloud service. [Free plan](https://bonsai.io)
* Sentry Error-tracking cloud service. [Free plan](https://sentry.io)
* Fake Credit Card Api up and working. [Code here](https://github.com/cmramseyer/fake_credit_card_api)


# ToDo
* Pundit implementation for users/admins authorization
* Unit/Integration specs
* Improve documentation