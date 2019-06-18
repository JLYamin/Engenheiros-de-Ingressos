require 'rails_helper'

RSpec.describe Cidade, type: :model do
  before(:each) do
    @cidade = Cidade.new( cidade_nome: 'Rio Branco', 
    estado_id: 1) 
  end
  
  it "is valid when name isn't nil" do
    expect(@cidade).to be_valid
  end

  it "belongs to a state" do
    estados = Estado.all
    expect(estados.find(@cidade.estado_id)).not_to be_nil
  end
end
