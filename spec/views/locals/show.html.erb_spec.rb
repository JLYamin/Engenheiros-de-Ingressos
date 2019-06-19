require 'rails_helper'

RSpec.describe "locals/show", type: :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :local => "Local",
      :endereco => "Endereco",
      :cidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(//)
  end
end
