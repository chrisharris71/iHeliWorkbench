require 'spec_helper'

describe "governors/index" do
  before(:each) do
    assign(:governors, [
      stub_model(Governor,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      ),
      stub_model(Governor,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of governors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
