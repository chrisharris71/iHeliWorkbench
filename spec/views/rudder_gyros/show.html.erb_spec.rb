require 'spec_helper'

describe "rudder_gyros/show" do
  before(:each) do
    @rudder_gyro = assign(:rudder_gyro, stub_model(RudderGyro,
      :part_number => "Part Number",
      :size => "Size",
      :manufacturer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    rendered.should match(/Size/)
    rendered.should match(/1/)
  end
end
