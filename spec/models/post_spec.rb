require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:title) }
  it { is_expected.to have_rich_text(:content) }
  it { should belong_to(:user) }
end
