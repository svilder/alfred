require 'rails_helper'

RSpec.describe ToDoList, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:tasks).dependent(:destroy) }
end
