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

  scenario 'User can update a box from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a box'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Purple'
    click_on 'Add box'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Purple'
    click_on 'Small'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Purple'
    click_on 'Edit'
    fill_in 'Size', with: 'Large'
    fill_in 'Color', with: 'Red'
    click_on 'Update box'
    expect(page).to have_content 'Large'
    expect(page).to have_content 'Red'
    expect(page).to_not have_content 'Small'
    expect(page).to_not have_content 'Purple'
  end

  scenario 'User can delete a box from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a box'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Purple'
    click_on 'Add box'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Purple'
    click_on 'Small'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Purple'
    click_on 'Delete'
    expect(page).to_not have_content 'Small'
    expect(page).to_not have_content 'Purple'
  end

end