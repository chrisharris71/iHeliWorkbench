require 'spec_helper'

describe "rudder_gyros/edit" do
  before(:each) do
    @rudder_gyro = assign(:rudder_gyro, stub_model(RudderGyro,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit rudder_gyro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rudder_gyros_path(@rudder_gyro), :method => "post" do
      assert_select "input#rudder_gyro_part_number", :name => "rudder_gyro[part_number]"
      assert_select "input#rudder_gyro_size", :name => "rudder_gyro[size]"
      assert_select "input#rudder_gyro_manufacturer_id", :name => "rudder_gyro[manufacturer_id]"
    end
  end
end
