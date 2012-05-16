require 'spec_helper'

describe "cyclic_servos/edit" do
  before(:each) do
    @cyclic_servo = assign(:cyclic_servo, stub_model(CyclicServo,
      :part_number => "MyString",
      :max_torque => 1,
      :max_speed => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit cyclic_servo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cyclic_servos_path(@cyclic_servo), :method => "post" do
      assert_select "input#cyclic_servo_part_number", :name => "cyclic_servo[part_number]"
      assert_select "input#cyclic_servo_max_torque", :name => "cyclic_servo[max_torque]"
      assert_select "input#cyclic_servo_max_speed", :name => "cyclic_servo[max_speed]"
      assert_select "input#cyclic_servo_size", :name => "cyclic_servo[size]"
      assert_select "input#cyclic_servo_manufacturer_id", :name => "cyclic_servo[manufacturer_id]"
    end
  end
end
