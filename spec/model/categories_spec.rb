require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new }

  describe 'associations' do
    it { should have_many(:articles) }

    it 'is valid with valid attributes' do
      category.name = 'Supermoto'
      category.display_in_navbar = true
      expect(category).to be_valid
    end

    it 'is valid with valid attributes' do
      category.name = 'Supermoto'
      expect(category).to be_valid
    end

    it 'is valid with valid attributes' do
      category.display_in_navbar = true
      expect(category).not_to be_valid
    end
  end
end
