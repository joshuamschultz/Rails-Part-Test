require 'rails_helper'

RSpec.describe "requirements/index", :type => :view do
  before(:each) do
    assign(:requirements, [
      Requirement.create!(
        :bubble => "Bubble",
        :dim => 1,
        :tolerance_less => 2,
        :tolerance_plus => "Tolerance Plus",
        :dim_type => 3,
        :part_id => 4
      ),
      Requirement.create!(
        :bubble => "Bubble",
        :dim => 1,
        :tolerance_less => 2,
        :tolerance_plus => "Tolerance Plus",
        :dim_type => 3,
        :part_id => 4
      )
    ])
  end

  it "renders a list of requirements" do
    render
    assert_select "tr>td", :text => "Bubble".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Tolerance Plus".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
