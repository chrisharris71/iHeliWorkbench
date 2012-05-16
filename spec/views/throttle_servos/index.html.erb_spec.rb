require 'spec_helper'

describe "throttle_servos/index" do
  before(:each) do
    assign(:throttle_servos, [
      stub_model(ThrottleServo,
        :part_number => "Part Number",
        :max_torque => 1,
        :max_speed => 2,
        :size => "Size",
        :manufacturer_id => 3
      ),
      stub_model(ThrottleServo,
        :part_number => "Part Number",
        :max_torque => 1,
        :max_speed => 2,
        :size => "Size",
        :manufacturer_id => 3
      )
    ])
  end

  it "renders a list of throttle_servos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
