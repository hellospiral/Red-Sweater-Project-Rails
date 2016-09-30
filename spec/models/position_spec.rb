require 'rails_helper'

RSpec.describe Position, type: :model do
  it { should belong_to :volunteer }
end
