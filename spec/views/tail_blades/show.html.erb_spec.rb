require 'spec_helper'

describe "tail_blades/show" do
  before(:each) do
    @tail_blade = assign(:tail_blade, stub_model(TailBlade,
      :part_number => "Part Number",
      :blade_length => 1,
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
