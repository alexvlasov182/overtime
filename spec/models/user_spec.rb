require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: 'test@test.com', password: 'test@test', password_confirmation: 'test@test', first_name: 'Alex', last_name: 'Vlasov')
    end
    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created with first_name, last_name' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
