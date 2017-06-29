# Crossover

*the last customer support service you'll ever need*

## Technologies Stack

* MySQL server
* Ruby on Rails 5
* EmberJS



## Installation

1. Install required gems by running `bundle install`
2. Install npm modules required by EmberJS: `cd frontend; npm i`
3. Create and migrate the database: `rails db:create; rails db:migrate`

## Run

Start the server with `rails s` and visit [http://localhost:3000](http://localhost:3000)

Creating user accounts through the UI is currently unsupported.

Create new user account from the rails console:

```ruby
rails c
User.create(email: 'v.f@g.c', password: '123456', password_confirmation: '123456', admin: false)
```

Set `admin: true` if you want to create an admin user.
