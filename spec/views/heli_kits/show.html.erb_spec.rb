require 'spec_helper'

describe "heli_kits/show" do
  before(:each) do
    @heli_kit = assign(:heli_kit, stub_model(HeliKit,
      :name => "Name",
      :part_number => "Part Number",
      :size => "Size",
      :power => "Power",
      :manufacturer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Part Number/)
    rendered.should match(/Size/)
    rendered.should match(/Power/)
    rendered.should match(/1/)
  end
end
