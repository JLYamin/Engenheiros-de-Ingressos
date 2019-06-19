require 'rails_helper'

RSpec.describe CreditCard, type: :model do
  before(:each) do 
    @card = CreditCard.new(number: 123455552345, security: 123, expiration: Date.new(2021,2), user_id: 1)
  end

  it "is valid when number, security, expiration and user_id aren't nil" do
    expect(@card).to be_valid  
  end

  it "belongs to a User" do
    users = User.all
    expect(users.find(@card.user_id)).not_to be_nil
  end
end
