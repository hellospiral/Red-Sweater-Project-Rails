require 'rails_helper'

describe "the navigation" do
  it "takes users from the homepage to the Focus page" do
    visit root_path
    click_link "Our Focus"
    expect(page).to have_content "WHAT DOES THE FUTURE HOLD?"
  end
  it "takes users from the homepage to the School page" do
    visit root_path
    click_link "The School"
    expect(page).to have_content "SMALL BUSINESS SKILLS"
  end
  it "takes users from the homepage to the Sponsorship page" do
    FactoryGirl.create(:student)
    visit root_path
    click_link "Sponsor"
    expect(page).to have_content "I want to become"
  end
  it "takes users to the Volunteer page when they click Get Involved" do

  end
end
