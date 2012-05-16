require 'spec_helper'

describe "speed_controls/new" do
  before(:each) do
    assign(:speed_control, stub_model(SpeedControl,
      :part_number => "MyString",
      :amp_rating => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new speed_control form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => speed_controls_path, :method => "post" do
      assert_select "input#speed_control_part_number", :name => "speed_control[part_number]"
      assert_select "input#speed_control_amp_rating", :name => "speed_control[amp_rating]"
      assert_select "input#speed_control_size", :name => "speed_control[size]"
      assert_select "input#speed_control_manufacturer_id", :name => "speed_control[manufacturer_id]"
    end
  end
end
