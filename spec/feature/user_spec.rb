# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1) }

  describe 'associations' do
    it { should have_many(:articles) }
  end
end
