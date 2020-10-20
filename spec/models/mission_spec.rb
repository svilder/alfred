require 'rails_helper'

RSpec.describe Mission, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:client_name) }
end
