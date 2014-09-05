require 'rails_helper'

RSpec.describe "characteristics/index", :type => :view do
  before(:each) do
    assign(:characteristics, [
      Characteristic.create!(
        :name => "Name",
        :symbol => "Symbol",
        :two_sided => false,
        :continuous => false
      ),
      Characteristic.create!(
        :name => "Name",
        :symbol => "Symbol",
        :two_sided => false,
        :continuous => false
      )
    ])
  end

  it "renders a list of characteristics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
