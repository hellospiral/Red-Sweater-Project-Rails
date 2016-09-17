require 'rails_helper'

describe "user" do
  it "allows a user to create an account" do
    visit new_subscriber_path
    click_link "Create Account"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    fill_in "Password confirmation", :with => "rainbow"
    click_on "Sign up"
    expect(page).to have_content "Logged in as unicorn@email.com"
  end
  it "allows a user to log into an existing account" do
    visit new_subscriber_path
    click_link "Create Account"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    fill_in "Password confirmation", :with => "rainbow"
    click_on "Sign up"
    User.last.admin = true
    click_on "Log out"
    click_on "Login"
    fill_in "Email", :with => "unicorn@email.com"
    fill_in "Password", :with => "rainbow"
    click_on "Log in"
    expect(page).to have_content "Logged in as unicorn@email.com"
  end
end
