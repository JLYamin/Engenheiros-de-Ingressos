require 'rails_helper'

RSpec.describe "salas/edit", type: :view do
  before(:each) do
    @sala = assign(:sala, Sala.create!(
      :num => 1,
      :complemento_sala => "MyString",
      :local => nil
    ))
  end

  it "renders the edit sala form" do
    render

    assert_select "form[action=?][method=?]", sala_path(@sala), "post" do

      assert_select "input[name=?]", "sala[num]"

      assert_select "input[name=?]", "sala[complemento_sala]"

      assert_select "input[name=?]", "sala[local_id]"
    end
  end
end
