require 'rails_helper'

RSpec.describe "locals/edit", type: :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :local => "MyString",
      :endereco => "MyString",
      :cidade => nil
    ))
  end

  it "renders the edit local form" do
    render

    assert_select "form[action=?][method=?]", local_path(@local), "post" do

      assert_select "input[name=?]", "local[local]"

      assert_select "input[name=?]", "local[endereco]"

      assert_select "input[name=?]", "local[cidade_id]"
    end
  end
end
