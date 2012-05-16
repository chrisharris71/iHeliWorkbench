require 'spec_helper'

describe "throttle_servos/new" do
  before(:each) do
    assign(:throttle_servo, stub_model(ThrottleServo,
      :part_number => "MyString",
      :max_torque => 1,
      :max_speed => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new throttle_servo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => throttle_servos_path, :method => "post" do
      assert_select "input#throttle_servo_part_number", :name => "throttle_servo[part_number]"
      assert_select "input#throttle_servo_max_torque", :name => "throttle_servo[max_torque]"
      assert_select "input#throttle_servo_max_speed", :name => "throttle_servo[max_speed]"
      assert_select "input#throttle_servo_size", :name => "throttle_servo[size]"
      assert_select "input#throttle_servo_manufacturer_id", :name => "throttle_servo[manufacturer_id]"
    end
  end
end
