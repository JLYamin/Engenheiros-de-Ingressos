require 'rails_helper'

RSpec.describe "salas/new", type: :view do
  before(:each) do
    assign(:sala, Sala.new(
      :num => 1,
      :complemento_sala => "MyString",
      :local => nil
    ))
  end

  it "renders new sala form" do
    render

    assert_select "form[action=?][method=?]", salas_path, "post" do

      assert_select "input[name=?]", "sala[num]"

      assert_select "input[name=?]", "sala[complemento_sala]"

      assert_select "input[name=?]", "sala[local_id]"
    end
  end
end
