require 'rails_helper'

describe "position", js: true  do
  it "allows an admin to add a new position" do
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    click_on 'Admin dashboard'
    click_on 'Add a position'
    fill_in 'Title', :with => 'Science Teacher'
    fill_in 'Term (format: Term I:Month 2016 -- Month 2017)', :with => 'Term II: July-Dec 2016'
    click_on 'Create Position'
    expect(page).to have_content 'Science Teacher'
  end
  it "allows an admin to edit an existing position" do
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    FactoryGirl.create(:position)
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    click_on 'Admin dashboard'
    click_on 'Update Science Teacher'
    fill_in 'Title', :with => 'Physics Teacher'
    click_on 'Update Position'
    expect(page).to have_content 'Physics Teacher'
  end
  it "allows an admin to delete an existing position" do
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    FactoryGirl.create(:position)
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    save_and_open_screenshot
    click_on 'Admin dashboard'
    click_on 'Delete Science Teacher'
    expect(page).to have_no_content 'Science Teacher'
  end
end
