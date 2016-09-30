require 'rails_helper'


RSpec.describe Position, type: :model do
  it { should have_one :volunteer }
  it { should validate_presence_of :title}
  it { should validate_presence_of :term}

end
