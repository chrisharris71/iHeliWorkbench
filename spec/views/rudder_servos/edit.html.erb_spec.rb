require 'spec_helper'

describe "rudder_servos/edit" do
  before(:each) do
    @rudder_servo = assign(:rudder_servo, stub_model(RudderServo,
      :part_number => "MyString",
      :max_torque => 1,
      :max_speed => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit rudder_servo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rudder_servos_path(@rudder_servo), :method => "post" do
      assert_select "input#rudder_servo_part_number", :name => "rudder_servo[part_number]"
      assert_select "input#rudder_servo_max_torque", :name => "rudder_servo[max_torque]"
      assert_select "input#rudder_servo_max_speed", :name => "rudder_servo[max_speed]"
      assert_select "input#rudder_servo_size", :name => "rudder_servo[size]"
      assert_select "input#rudder_servo_manufacturer_id", :name => "rudder_servo[manufacturer_id]"
    end
  end
end
