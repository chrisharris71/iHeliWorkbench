require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :user_id => 1,
        :power => "Power",
        :type => "Type",
        :heli_kit => "Heli Kit",
        :elec_motor => "Elec Motor",
        :engine => "Engine",
        :exhaust => "Exhaust",
        :speed_control => "Speed Control",
        :cyclic_servo => "Cyclic Servo",
        :rudder_servo => "Rudder Servo",
        :throttle_servo => "Throttle Servo",
        :rudder_gyro => "Rudder Gyro",
        :fbl_unit => "Fbl Unit",
        :receiver => "Receiver",
        :governor => "Governor",
        :main_blade => "Main Blade",
        :tail_blade => "Tail Blade",
        :paddle => "Paddle"
      ),
      stub_model(Project,
        :user_id => 1,
        :power => "Power",
        :type => "Type",
        :heli_kit => "Heli Kit",
        :elec_motor => "Elec Motor",
        :engine => "Engine",
        :exhaust => "Exhaust",
        :speed_control => "Speed Control",
        :cyclic_servo => "Cyclic Servo",
        :rudder_servo => "Rudder Servo",
        :throttle_servo => "Throttle Servo",
        :rudder_gyro => "Rudder Gyro",
        :fbl_unit => "Fbl Unit",
        :receiver => "Receiver",
        :governor => "Governor",
        :main_blade => "Main Blade",
        :tail_blade => "Tail Blade",
        :paddle => "Paddle"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Power".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Heli Kit".to_s, :count => 2
    assert_select "tr>td", :text => "Elec Motor".to_s, :count => 2
    assert_select "tr>td", :text => "Engine".to_s, :count => 2
    assert_select "tr>td", :text => "Exhaust".to_s, :count => 2
    assert_select "tr>td", :text => "Speed Control".to_s, :count => 2
    assert_select "tr>td", :text => "Cyclic Servo".to_s, :count => 2
    assert_select "tr>td", :text => "Rudder Servo".to_s, :count => 2
    assert_select "tr>td", :text => "Throttle Servo".to_s, :count => 2
    assert_select "tr>td", :text => "Rudder Gyro".to_s, :count => 2
    assert_select "tr>td", :text => "Fbl Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Receiver".to_s, :count => 2
    assert_select "tr>td", :text => "Governor".to_s, :count => 2
    assert_select "tr>td", :text => "Main Blade".to_s, :count => 2
    assert_select "tr>td", :text => "Tail Blade".to_s, :count => 2
    assert_select "tr>td", :text => "Paddle".to_s, :count => 2
  end
end
