require 'rails_helper'

RSpec.describe Evento, type: :model do
  before(:each) do
    @evento = Evento.new( title: 'Camila"s Show', 
      date_begin: DateTime.new(2020,2,3,4,5,6),
      date_end: DateTime.new(2020,3,3,4,5,6) ,
      user_id: 1,
      faixa_etarium_id: 1,
      classes_evento_id: 1) 

  end

  it "is valid when title, date, user id, faixa id and classes id are valid" do
    expect(@evento).to be_valid
  end

  it "'s begin date it's in the future" do
    expect(@evento.date_begin).to be >= Date.today
  end

  it "'s end date is after begin date" do
    expect(@evento.date_begin).to be < @evento.date_end
  end

  it "belongs to a User" do
    users = User.all
    expect(users.find(@evento.user_id)).not_to be_nil
  end

  it "have a Faixa Etarium" do
    faixas = FaixaEtarium.all
    expect(faixas.find(@evento.faixa_etarium_id)).not_to be_nil
  end

  it "belongs to a Class" do
    classes = ClassesEvento.all
    expect(classes.find(@evento.classes_evento_id)).not_to be_nil
  end
end
