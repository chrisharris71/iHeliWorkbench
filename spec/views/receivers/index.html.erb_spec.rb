require 'spec_helper'

describe "receivers/index" do
  before(:each) do
    assign(:receivers, [
      stub_model(Receiver,
        :part_number => "Part Number",
        :size => "Size",
        :channels => 1,
        :has_gov => false,
        :has_fbl_unit => false,
        :has_volt_reg => false,
        :manufacturer_id => 2
      ),
      stub_model(Receiver,
        :part_number => "Part Number",
        :size => "Size",
        :channels => 1,
        :has_gov => false,
        :has_fbl_unit => false,
        :has_volt_reg => false,
        :manufacturer_id => 2
      )
    ])
  end

  it "renders a list of receivers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
