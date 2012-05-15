require 'spec_helper'

describe "main_blades/show" do
  before(:each) do
    @main_blade = assign(:main_blade, stub_model(MainBlade,
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
