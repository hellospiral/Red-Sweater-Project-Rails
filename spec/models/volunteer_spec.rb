require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  it { should have_many :positions }
end
