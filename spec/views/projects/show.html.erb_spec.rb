require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Power/)
    rendered.should match(/Type/)
    rendered.should match(/Heli Kit/)
    rendered.should match(/Elec Motor/)
    rendered.should match(/Engine/)
    rendered.should match(/Exhaust/)
    rendered.should match(/Speed Control/)
    rendered.should match(/Cyclic Servo/)
    rendered.should match(/Rudder Servo/)
    rendered.should match(/Throttle Servo/)
    rendered.should match(/Rudder Gyro/)
    rendered.should match(/Fbl Unit/)
    rendered.should match(/Receiver/)
    rendered.should match(/Governor/)
    rendered.should match(/Main Blade/)
    rendered.should match(/Tail Blade/)
    rendered.should match(/Paddle/)
  end
end
