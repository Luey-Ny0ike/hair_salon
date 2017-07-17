# HAIR SALON

A virtual hair salon application created using Sinatra.

by: Lewis Nyoike


## Technologies used

`Ruby` `Sinatra` `RSpec` `Bundler` `psql`

## Setup

1. Clone the repo: `$ git clone [URL]`

2. Install dependencies: `$ bundle`

3. Get in psql terminal `$psql`

4. Create two databases, hair_salon and hair_salon_test
   run `CREATE DATABASE hair_salon;
  CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
  CREATE TABLE clients (id serial PRIMARY KEY, name varchar stylist_id int);`

5. Create the second db using the first one as a template

6. Run the app: `$ ruby app.rb`

7. Navigate to [http://localhost:4567/](http://localhost:4567/)

Use `$ rspec` to run tests

## LICENSE

[MIT LICENSE]()
