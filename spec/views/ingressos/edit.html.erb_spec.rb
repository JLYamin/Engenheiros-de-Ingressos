require 'rails_helper'

RSpec.describe "ingressos/edit", type: :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :apresentacao => nil,
      :user => nil
    ))
  end

  it "renders the edit ingresso form" do
    render

    assert_select "form[action=?][method=?]", ingresso_path(@ingresso), "post" do

      assert_select "input[name=?]", "ingresso[apresentacao_id]"

      assert_select "input[name=?]", "ingresso[user_id]"
    end
  end
end
