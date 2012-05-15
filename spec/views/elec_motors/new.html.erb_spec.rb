require 'spec_helper'

describe "elec_motors/new" do
  before(:each) do
    assign(:elec_motor, stub_model(ElecMotor,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new elec_motor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => elec_motors_path, :method => "post" do
      assert_select "input#elec_motor_part_number", :name => "elec_motor[part_number]"
      assert_select "input#elec_motor_size", :name => "elec_motor[size]"
      assert_select "input#elec_motor_manufacturer_id", :name => "elec_motor[manufacturer_id]"
    end
  end
end
