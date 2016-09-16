require 'rails_helper'

describe "event" do
  it "adds a new event" do
    event = Event.create(name: "Tea in the Garden", date: "06/03/2017", time: "7pm, PST", venu: "Sauvie Island Farms", address: "1234 Garden Street Portland, OR 97204", cost: 30, details: "Come join us for a light tea and lunch featuring fresh veggies from Sauvie Island Farms. All proceeds benefit Red Sweater Project.", image: "event2.jpg")
    visit events_path
    expect(page).to have_content "Tea in the Garden"
  end
  it "updates an existing event" do
    event = Event.create(name: "Tea in the Garden", date: "06/03/2017", time: "7pm, PST", venu: "Sauvie Island Farms", address: "1234 Garden Street Portland, OR 97204", cost: 30, details: "Come join us for a light tea and lunch featuring fresh veggies from Sauvie Island Farms. All proceeds benefit Red Sweater Project.", image: "event2.jpg")
    visit admin_index_path
    click_link "Update"
    fill_in 'Name', :with => 'Lunch in the Garden'
    click_button 'Update Event'
    click_link 'All events'
    expect(page).to have_content 'Lunch in the Garden'
  end
end
