require 'rails_helper'

RSpec.describe "requirements/show", :type => :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :bubble => "Bubble",
      :dim => 1,
      :tolerance_less => 2,
      :tolerance_plus => "Tolerance Plus",
      :dim_type => 3,
      :part_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bubble/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Tolerance Plus/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
