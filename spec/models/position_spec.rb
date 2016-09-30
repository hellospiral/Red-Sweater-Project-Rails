require 'rails_helper'


RSpec.describe Position, type: :model do
  it { should belong_to :volunteer }
  it { should validate_presence_of :title}
  it { should validate_presence_of :details}
  it { should validate_presence_of :term}

end
