require 'spec_helper'

describe "heli_kits/index" do
  before(:each) do
    assign(:heli_kits, [
      stub_model(HeliKit,
        :name => "Name",
        :part_number => "Part Number",
        :size => "Size",
        :power => "Power",
        :manufacturer_id => 1
      ),
      stub_model(HeliKit,
        :name => "Name",
        :part_number => "Part Number",
        :size => "Size",
        :power => "Power",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of heli_kits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Power".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
