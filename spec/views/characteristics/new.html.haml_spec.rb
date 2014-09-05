require 'rails_helper'

RSpec.describe "characteristics/new", :type => :view do
  before(:each) do
    assign(:characteristic, Characteristic.new(
      :name => "MyString",
      :symbol => "MyString",
      :two_sided => false,
      :continuous => false
    ))
  end

  it "renders new characteristic form" do
    render

    assert_select "form[action=?][method=?]", characteristics_path, "post" do

      assert_select "input#characteristic_name[name=?]", "characteristic[name]"

      assert_select "input#characteristic_symbol[name=?]", "characteristic[symbol]"

      assert_select "input#characteristic_two_sided[name=?]", "characteristic[two_sided]"

      assert_select "input#characteristic_continuous[name=?]", "characteristic[continuous]"
    end
  end
end
