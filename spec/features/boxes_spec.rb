require 'spec_helper'

feature 'CRUD boxes' do

  scenario 'User can see Welcome on home page' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end