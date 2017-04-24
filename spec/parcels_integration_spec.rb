require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('parcels',{:type => :feature}) do
  it('processes user entry and returns cost of delivery') do
    visit('/')
    fill_in('height', :with => 10)
    fill_in('length', :with => 50)
    fill_in('depth', :with => 10)
    fill_in('weight', :with => 1200)
    select('4 days', from: 'time')
    click_button('Check!')
    expect(page).to have_content(18.2)
  end
end
