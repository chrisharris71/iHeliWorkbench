require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :user_id => 1,
      :power => "MyString",
      :type => "",
      :heli_kit => "MyString",
      :elec_motor => "MyString",
      :engine => "MyString",
      :exhaust => "MyString",
      :speed_control => "MyString",
      :cyclic_servo => "MyString",
      :rudder_servo => "MyString",
      :throttle_servo => "MyString",
      :rudder_gyro => "MyString",
      :fbl_unit => "MyString",
      :receiver => "MyString",
      :governor => "MyString",
      :main_blade => "MyString",
      :tail_blade => "MyString",
      :paddle => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_user_id", :name => "project[user_id]"
      assert_select "input#project_power", :name => "project[power]"
      assert_select "input#project_type", :name => "project[type]"
      assert_select "input#project_heli_kit", :name => "project[heli_kit]"
      assert_select "input#project_elec_motor", :name => "project[elec_motor]"
      assert_select "input#project_engine", :name => "project[engine]"
      assert_select "input#project_exhaust", :name => "project[exhaust]"
      assert_select "input#project_speed_control", :name => "project[speed_control]"
      assert_select "input#project_cyclic_servo", :name => "project[cyclic_servo]"
      assert_select "input#project_rudder_servo", :name => "project[rudder_servo]"
      assert_select "input#project_throttle_servo", :name => "project[throttle_servo]"
      assert_select "input#project_rudder_gyro", :name => "project[rudder_gyro]"
      assert_select "input#project_fbl_unit", :name => "project[fbl_unit]"
      assert_select "input#project_receiver", :name => "project[receiver]"
      assert_select "input#project_governor", :name => "project[governor]"
      assert_select "input#project_main_blade", :name => "project[main_blade]"
      assert_select "input#project_tail_blade", :name => "project[tail_blade]"
      assert_select "input#project_paddle", :name => "project[paddle]"
    end
  end
end
