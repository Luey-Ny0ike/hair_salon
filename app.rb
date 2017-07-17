require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/client')
require('./lib/stylist')
require('pg')

DB = PG.connect(dbname: 'hair_salon')
# connetced it to the database
get('/') do
  @stylists = Stylist.all
  erb(:index)
end
