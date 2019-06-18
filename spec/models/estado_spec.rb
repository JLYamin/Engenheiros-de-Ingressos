require 'rails_helper'

RSpec.describe Estado, type: :model do
  before(:each) do
    @estado = Estado.new( name: 'Arizona', 
      sigla: "AZ") 
  end
  
  it "is valid when name and sigla aren't nil" do
    expect(@estado).to be_valid
  end
end
