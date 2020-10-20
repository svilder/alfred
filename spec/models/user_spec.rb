require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:bookmarks) }
  it { should have_many(:long_notes) }
  it { should have_many(:missions) }
  it { should have_many(:objectives) }
  it { should have_many(:posts) }
  it { should have_many(:short_notes) }
  it { should have_many(:to_do_lists) }
end
