require 'spec_helper'

describe "speed_controls/index" do
  before(:each) do
    assign(:speed_controls, [
      stub_model(SpeedControl,
        :part_number => "Part Number",
        :amp_rating => 1,
        :size => "Size",
        :manufacturer_id => 2
      ),
      stub_model(SpeedControl,
        :part_number => "Part Number",
        :amp_rating => 1,
        :size => "Size",
        :manufacturer_id => 2
      )
    ])
  end

  it "renders a list of speed_controls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
