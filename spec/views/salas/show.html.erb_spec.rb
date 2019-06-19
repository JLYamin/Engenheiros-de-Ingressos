require 'rails_helper'

RSpec.describe "salas/show", type: :view do
  before(:each) do
    @sala = assign(:sala, Sala.create!(
      :num => 2,
      :complemento_sala => "Complemento Sala",
      :local => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Complemento Sala/)
    expect(rendered).to match(//)
  end
end
