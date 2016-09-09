require 'rails_helper'

describe Event do
  it { should validate_presence_of :name}
  it { should validate_length_of(:name).is_at_most(30).on(:create)}
end
