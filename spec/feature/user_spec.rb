require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1) }

  describe 'associations' do
    it { should have_many(:articles) }
  end

  context 'links' do
    it 'should go to sign up page ' do
      visit '/users/sign_in'
      click_link('register', href: '/users/sign_up')
      expect(page).to have_content('Sign up')
    end

    it 'should go to log in  page ' do
      visit '/users/sign_in'
      click_link('login', href: '/users/sign_in')
      expect(page).to have_content('Log in')
    end

    it 'should go to sign up page ' do
      visit '/users/sign_up'
      click_link('register', href: '/users/sign_up')
      expect(page).to have_content('Sign up')
    end

    it 'should go to log in  page ' do
      visit '/users/sign_up'
      click_link('login', href: '/users/sign_in')
      expect(page).to have_content('Log in')
    end
  end
end
