require 'spec_helper'

describe "exhausts/index" do
  before(:each) do
    assign(:exhausts, [
      stub_model(Exhaust,
        :part_number => "Part Number",
        :size => "Size",
        :works_with => "Works With",
        :manufacturer_id => 1
      ),
      stub_model(Exhaust,
        :part_number => "Part Number",
        :size => "Size",
        :works_with => "Works With",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of exhausts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Works With".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
