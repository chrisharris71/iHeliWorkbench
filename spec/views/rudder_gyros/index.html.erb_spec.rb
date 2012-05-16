require 'spec_helper'

describe "rudder_gyros/index" do
  before(:each) do
    assign(:rudder_gyros, [
      stub_model(RudderGyro,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      ),
      stub_model(RudderGyro,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of rudder_gyros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
