require 'rails_helper'

describe "adding a student" do
  it "adds a new student" do
    student = Student.create(name: "Emmanuel Andrea", age: 14, bio: "I want to go do school", dream: "pilot", sponsored: false, image: "emmanuelandrea", gender: "boy")
    visit students_path
    expect(page).to have_content "Emmanuel Andrea"
  end
end
