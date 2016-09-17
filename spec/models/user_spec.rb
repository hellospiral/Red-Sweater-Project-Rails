require 'rails_helper'

RSpec.describe User, type: :model do
  it "allows admin privelages to be given to a user" do
    user = User.new({:email => "unicorn@email.com", :password => "rainbow"})
    user.admin = true
    user.save
    expect(user.admin).to(eq(true))
  end

end
