require 'rails_helper'

describe "student" do
  it "adds a new student" do
    student = Student.create(name: "Emmanuel Andrea", age: 14, bio: "I want to go do school", dream: "pilot", sponsored: false, image: "emmanuelandrea", gender: "boy")
    visit students_path
    expect(page).to have_content "Emmanuel Andrea"
  end
  it "updates an existing student" do
    student = Student.create(name: "Emmanuel Andrea", age: 14, bio: "I want to go do school", dream: "pilot", sponsored: false, image: "emmanuelandrea", gender: "boy")
    visit admin_index_path
    click_link "Update Emmanuel Andrea"
    fill_in 'Name', :with => 'Eman Andre'
    click_button 'Update Student'
    expect(page).to have_content 'Eman Andre'
  end
end
