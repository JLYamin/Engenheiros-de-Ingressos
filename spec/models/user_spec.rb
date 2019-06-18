require 'rails_helper'
require "cpf_cnpj"

RSpec.describe User do
  before(:each) do
    @user = User.new( name: 'Camila', 
      cpf: 12345, 
      email: 'camila@porquin.com',
      password:'123456') 
  end

  it "is valid when name, cpf, email and password aren't blank" do 
    expect(@user).to be_valid 
  end

  it "is an instance of User" do
    expect(@user).to be_instance_of(User)
  end

  it "'s cpf is valid" do
    expect(CPF.valid?(@user.cpf))
  end

end
