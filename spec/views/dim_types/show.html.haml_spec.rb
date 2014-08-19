require 'rails_helper'

RSpec.describe "dim_types/show", :type => :view do
  before(:each) do
    @dim_type = assign(:dim_type, DimType.create!(
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
