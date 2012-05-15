require 'spec_helper'

describe "elec_motors/show" do
  before(:each) do
    @elec_motor = assign(:elec_motor, stub_model(ElecMotor,
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
