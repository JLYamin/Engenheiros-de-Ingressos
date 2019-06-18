require 'rails_helper'

RSpec.describe "locals/new", type: :view do
  before(:each) do
    assign(:local, Local.new(
      :local => "MyString",
      :endereco => "MyString",
      :cidade => nil
    ))
  end

  it "renders new local form" do
    render

    assert_select "form[action=?][method=?]", locals_path, "post" do

      assert_select "input[name=?]", "local[local]"

      assert_select "input[name=?]", "local[endereco]"

      assert_select "input[name=?]", "local[cidade_id]"
    end
  end
end
