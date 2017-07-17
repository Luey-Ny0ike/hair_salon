require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new stylist', type: :feature) do
  it('allows a user to view all the stylists that have been created') do
    stylist = Stylist.new(name: 'Antony', id: nil)
    stylist.save
    visit('/')
    expect(page).to_have_content(stylist.name)
  end
end
