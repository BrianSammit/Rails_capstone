require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.new}

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:category) }

    it "is valid with valid attributes" do
      expect(article).not_to be_valid
    end

    it "is valid with valid attributes" do
      article.title = 'Moto'
      article.body = 'motrcycles'
      article.user_id = 1
      expect(article).not_to be_valid
    end

  end
end
