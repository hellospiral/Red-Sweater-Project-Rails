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
end
