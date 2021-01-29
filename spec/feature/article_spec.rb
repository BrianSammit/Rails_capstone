require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:category) }
  end
end