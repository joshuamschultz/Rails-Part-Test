require 'rails_helper'

RSpec.describe "characteristics/show", :type => :view do
  before(:each) do
    @characteristic = assign(:characteristic, Characteristic.create!(
      :name => "Name",
      :symbol => "Symbol",
      :two_sided => false,
      :continuous => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
