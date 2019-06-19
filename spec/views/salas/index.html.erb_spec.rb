require 'rails_helper'

RSpec.describe "salas/index", type: :view do
  before(:each) do
    assign(:salas, [
      Sala.create!(
        :num => 2,
        :complemento_sala => "Complemento Sala",
        :local => nil
      ),
      Sala.create!(
        :num => 2,
        :complemento_sala => "Complemento Sala",
        :local => nil
      )
    ])
  end

  it "renders a list of salas" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Complemento Sala".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
