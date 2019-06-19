require 'rails_helper'

RSpec.describe FaixaEtarium, type: :model do
  before(:each) do 
    @faixa = FaixaEtarium.new(faixa_etaria:'Maiores de 5 anos', description:'Não expõe crianças a conteúdos potencialmente prejudiciais')
  end

  it "is valid when age and description aren't nil" do
    expect(@faixa).to be_valid  
  end
end
