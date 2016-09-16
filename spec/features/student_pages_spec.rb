require 'rails_helper'

describe "student" do
  it "adds a new student" do
    FactoryGirl.create(:student)
    visit students_path
    expect(page).to have_content "Shedrack Japhet"
  end
  it "updates an existing student" do
    FactoryGirl.create(:student)
    visit admin_index_path
    click_link "Update Shedrack Japhet"
    fill_in 'Name', :with => 'Shedrack Japh'
    click_button 'Update Student'
    expect(page).to have_content 'Shedrack Japh'
  end
end
