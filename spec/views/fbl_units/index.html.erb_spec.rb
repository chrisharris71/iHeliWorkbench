require 'spec_helper'

describe "fbl_units/index" do
  before(:each) do
    assign(:fbl_units, [
      stub_model(FblUnit,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      ),
      stub_model(FblUnit,
        :part_number => "Part Number",
        :size => "Size",
        :manufacturer_id => 1
      )
    ])
  end

  it "renders a list of fbl_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
