require 'spec_helper'

describe "elec_motors/edit" do
  before(:each) do
    @elec_motor = assign(:elec_motor, stub_model(ElecMotor,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit elec_motor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => elec_motors_path(@elec_motor), :method => "post" do
      assert_select "input#elec_motor_part_number", :name => "elec_motor[part_number]"
      assert_select "input#elec_motor_size", :name => "elec_motor[size]"
      assert_select "input#elec_motor_manufacturer_id", :name => "elec_motor[manufacturer_id]"
    end
  end
end
