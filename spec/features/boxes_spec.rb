require 'spec_helper'

feature 'CRUD boxes' do

  scenario 'User can create a list of boxes' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a box'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Purple'
    click_on 'Add box'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Purple'
  end
end