require 'spec_helper'

describe "main_blades/index" do
  before(:each) do
    assign(:main_blades, [
      stub_model(MainBlade,
        :part_number => "Part Number",
        :blade_length => 1,
        :size => "Size",
        :manufacturer_id => 2
      ),
      stub_model(MainBlade,
        :part_number => "Part Number",
        :blade_length => 1,
        :size => "Size",
        :manufacturer_id => 2
      )
    ])
  end

  it "renders a list of main_blades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
