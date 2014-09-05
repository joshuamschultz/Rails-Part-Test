require 'rails_helper'

RSpec.describe "requirements/edit", :type => :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :bubble => "MyString",
      :dim => 1,
      :tolerance_less => 1,
      :tolerance_plus => "MyString",
      :dim_type => 1,
      :part_id => 1
    ))
  end

  it "renders the edit requirement form" do
    render

    assert_select "form[action=?][method=?]", requirement_path(@requirement), "post" do

      assert_select "input#requirement_bubble[name=?]", "requirement[bubble]"

      assert_select "input#requirement_dim[name=?]", "requirement[dim]"

      assert_select "input#requirement_tolerance_less[name=?]", "requirement[tolerance_less]"

      assert_select "input#requirement_tolerance_plus[name=?]", "requirement[tolerance_plus]"

      assert_select "input#requirement_dim_type[name=?]", "requirement[dim_type]"

      assert_select "input#requirement_part_id[name=?]", "requirement[part_id]"
    end
  end
end
