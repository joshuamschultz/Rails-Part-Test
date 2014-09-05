require 'rails_helper'

RSpec.describe "characteristics/edit", :type => :view do
  before(:each) do
    @characteristic = assign(:characteristic, Characteristic.create!(
      :name => "MyString",
      :symbol => "MyString",
      :two_sided => false,
      :continuous => false
    ))
  end

  it "renders the edit characteristic form" do
    render

    assert_select "form[action=?][method=?]", characteristic_path(@characteristic), "post" do

      assert_select "input#characteristic_name[name=?]", "characteristic[name]"

      assert_select "input#characteristic_symbol[name=?]", "characteristic[symbol]"

      assert_select "input#characteristic_two_sided[name=?]", "characteristic[two_sided]"

      assert_select "input#characteristic_continuous[name=?]", "characteristic[continuous]"
    end
  end
end
