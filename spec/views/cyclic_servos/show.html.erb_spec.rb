require 'spec_helper'

describe "cyclic_servos/show" do
  before(:each) do
    @cyclic_servo = assign(:cyclic_servo, stub_model(CyclicServo,
      :part_number => "Part Number",
      :max_torque => 1,
      :max_speed => 2,
      :size => "Size",
      :manufacturer_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Size/)
    rendered.should match(/3/)
  end
end
