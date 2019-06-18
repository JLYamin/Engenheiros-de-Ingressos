require 'rails_helper'

RSpec.describe ClassesEvento, type: :model do
  before(:each) do
    @classe = ClassesEvento.new(classe: "filme") 
  end
  
  it "is valid when filme isn't nil" do
    expect(@classe).to be_valid
  end
end
