require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  it { should belong_to :position }
end
