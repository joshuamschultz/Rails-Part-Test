require 'rails_helper'

RSpec.describe "dim_types/new", :type => :view do
  before(:each) do
    assign(:dim_type, DimType.new(
      :name => "MyString",
      :symbol => "MyString",
      :two_sided => false,
      :continuous => false
    ))
  end

  it "renders new dim_type form" do
    render

    assert_select "form[action=?][method=?]", dim_types_path, "post" do

      assert_select "input#dim_type_name[name=?]", "dim_type[name]"

      assert_select "input#dim_type_symbol[name=?]", "dim_type[symbol]"

      assert_select "input#dim_type_two_sided[name=?]", "dim_type[two_sided]"

      assert_select "input#dim_type_continuous[name=?]", "dim_type[continuous]"
    end
  end
end
