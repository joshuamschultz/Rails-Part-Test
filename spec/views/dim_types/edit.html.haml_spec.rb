require 'rails_helper'

RSpec.describe "dim_types/edit", :type => :view do
  before(:each) do
    @dim_type = assign(:dim_type, DimType.create!(
      :name => "MyString",
      :symbol => "MyString",
      :two_sided => false,
      :continuous => false
    ))
  end

  it "renders the edit dim_type form" do
    render

    assert_select "form[action=?][method=?]", dim_type_path(@dim_type), "post" do

      assert_select "input#dim_type_name[name=?]", "dim_type[name]"

      assert_select "input#dim_type_symbol[name=?]", "dim_type[symbol]"

      assert_select "input#dim_type_two_sided[name=?]", "dim_type[two_sided]"

      assert_select "input#dim_type_continuous[name=?]", "dim_type[continuous]"
    end
  end
end
