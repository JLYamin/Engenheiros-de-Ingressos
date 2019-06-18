require 'rails_helper'

RSpec.describe "ingressos/show", type: :view do
  before(:each) do
    @ingresso = assign(:ingresso, Ingresso.create!(
      :apresentacao => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
