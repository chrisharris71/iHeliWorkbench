require 'spec_helper'

describe "exhausts/show" do
  before(:each) do
    @exhaust = assign(:exhaust, stub_model(Exhaust,
      :part_number => "Part Number",
      :size => "Size",
      :works_with => "Works With",
      :manufacturer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    rendered.should match(/Size/)
    rendered.should match(/Works With/)
    rendered.should match(/1/)
  end
end
