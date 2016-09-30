require 'rails_helper'

describe "user" do
  it "allows a user to create an account" do
    visit root_path
    click_link "CREATE ACCOUNT"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    fill_in "Password confirmation", :with => "rainbow"
    click_on "Sign up"
    expect(page).to have_content "LOG OUT"
  end
  it "allows a user to log into an existing account" do
    visit root_path
    click_link "CREATE ACCOUNT"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    fill_in "Password confirmation", :with => "rainbow"
    click_on "Sign up"
    User.last.admin = true
    click_on "LOG OUT"
    click_on "LOG IN"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    click_on "Log in"
    expect(page).to have_content "LOG OUT"
  end
  it "won't allow a user who is not an admin to see the admin dashboard" do
    FactoryGirl.create(:user)
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    expect(page).to have_no_content "Admin dashboard"
  end
  it "will allow a user to see the admin dashboard if they are an admin" do
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    expect(page).to have_content "Admin dashboard"
  end
end
