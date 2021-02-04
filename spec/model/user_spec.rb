require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1) }

  describe 'associations' do
    it { should have_many(:articles) }

    it "is valid with valid attributes" do
      user.name = 'Brian'
      user.email = 'brian@gamil.com'
      user.username = 'brian97'
      user.password = '123456'
      user.password_confirmation = '123456'
      expect(user).to be_valid
    end

    it "is valid with valid attributes" do
      user.email = 'brian@gamil.com'
      user.username = 'brian97'
      user.password = '123456'
      user.password_confirmation = '123456'
      expect(user).not_to be_valid
    end

    it "is valid with valid attributes" do
      user.name = 'Brian'
      user.password = '123456'
      user.password_confirmation = '123456'
      expect(user).not_to be_valid
    end

  end
end
