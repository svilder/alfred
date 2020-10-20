require 'rails_helper'

RSpec.describe LongNote, type: :model do
  it { should validate_presence_of(:title) }
  it { is_expected.to have_rich_text(:description) }
  it { should have_many_attached(:images) }
  it { should belong_to(:user) }
end
