require 'rails_helper'

describe "student" do
  it "adds a new student" do
    FactoryGirl.create(:student)
    visit students_path
    expect(page).to have_content "Shedrack Japhet"
  end
  it "updates an existing student", js: true do
    FactoryGirl.create(:student)
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    click_on 'Admin dashboard'
    click_link "Update Shedrack Japhet"
    save_and_open_screenshot
    fill_in 'Full Name', :with => 'Shedrack Japh'
    click_button 'Update Student'
    expect(page).to have_content 'Shedrack Japh'
  end
  it 'deletes a student', js: true do
    FactoryGirl.create(:student)
    user = FactoryGirl.create(:user)
    user.admin = true
    user.save
    visit root_path
    click_on 'LOG IN'
    fill_in 'Email', :with => "user@email.com"
    fill_in 'Password', :with => "password"
    click_on 'Log in'
    click_on 'Admin dashboard'
    click_on 'Delete'
    expect(page).to have_no_content 'Shedrack'
  end
end
