require 'rails_helper'

RSpec.describe "ingressos/new", type: :view do
  before(:each) do
    assign(:ingresso, Ingresso.new(
      :apresentacao => nil,
      :user => nil
    ))
  end

  it "renders new ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingressos_path, "post" do

      assert_select "input[name=?]", "ingresso[apresentacao_id]"

      assert_select "input[name=?]", "ingresso[user_id]"
    end
  end
end
