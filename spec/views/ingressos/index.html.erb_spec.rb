require 'rails_helper'

RSpec.describe "ingressos/index", type: :view do
  before(:each) do
    assign(:ingressos, [
      Ingresso.create!(
        :apresentacao => nil,
        :user => nil
      ),
      Ingresso.create!(
        :apresentacao => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of ingressos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
