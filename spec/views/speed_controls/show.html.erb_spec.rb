require 'spec_helper'

describe "speed_controls/show" do
  before(:each) do
    @speed_control = assign(:speed_control, stub_model(SpeedControl,
      :part_number => "Part Number",
      :amp_rating => 1,
      :size => "Size",
      :manufacturer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    rendered.should match(/1/)
    rendered.should match(/Size/)
    rendered.should match(/2/)
  end
end
