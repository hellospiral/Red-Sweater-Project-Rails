require 'rails_helper'

describe "event" do
  it "adds a new event" do
    FactoryGirl.create(:event)
    visit events_path
    expect(page).to have_content "Tea in the Garden"
  end
  it "updates an existing event" do
    FactoryGirl.create(:event)
    visit admin_index_path
    click_link "Update Tea in the Garden"
    fill_in 'Name', :with => 'Lunch in the Garden'
    click_button 'Update Event'
    expect(page).to have_content 'Lunch in the Garden'
  end
  it "deletes an event" do
    FactoryGirl.create(:event)
    visit admin_index_path
    click_link 'Delete'
    expect(page).to have_no_content 'Lunch in the garden'
  end
end
