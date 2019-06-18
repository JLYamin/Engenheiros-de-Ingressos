require 'rails_helper'

RSpec.describe "locals/index", type: :view do
  before(:each) do
    assign(:locals, [
      Local.create!(
        :local => "Local",
        :endereco => "Endereco",
        :cidade => nil
      ),
      Local.create!(
        :local => "Local",
        :endereco => "Endereco",
        :cidade => nil
      )
    ])
  end

  it "renders a list of locals" do
    render
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
