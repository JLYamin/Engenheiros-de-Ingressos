require 'rails_helper'

RSpec.describe Apresentacao, type: :model do
  before(:each) do
    @apresent = Apresentacao.new( name: "Anitta's First Performance", 
      horario: DateTime.new(2020,2,3,4,5,6),
      ingressos_total: 20,
      evento_id: 1,
      disponiveis: 5,
      descricao: "Primeira performance") 
  end

  it "is valid when name, date and evento id are valid" do
    expect(@apresent).to be_valid
  end

  it "'s horario it's in the future" do
    expect(@apresent.horario).to be >= Date.today
  end

  it "belongs to an Event" do
    events = Evento.all
    expect(events.find(@apresent.evento_id)).not_to be_nil
  end

  it "have a at least 2 tickets total" do
    expect(@apresent.ingressos_total).to be > 1
  end
end
