require 'spec_helper'

describe "receivers/edit" do
  before(:each) do
    @receiver = assign(:receiver, stub_model(Receiver,
      :part_number => "MyString",
      :size => "MyString",
      :channels => 1,
      :has_gov => false,
      :has_fbl_unit => false,
      :has_volt_reg => false,
      :manufacturer_id => 1
    ))
  end

  it "renders the edit receiver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receivers_path(@receiver), :method => "post" do
      assert_select "input#receiver_part_number", :name => "receiver[part_number]"
      assert_select "input#receiver_size", :name => "receiver[size]"
      assert_select "input#receiver_channels", :name => "receiver[channels]"
      assert_select "input#receiver_has_gov", :name => "receiver[has_gov]"
      assert_select "input#receiver_has_fbl_unit", :name => "receiver[has_fbl_unit]"
      assert_select "input#receiver_has_volt_reg", :name => "receiver[has_volt_reg]"
      assert_select "input#receiver_manufacturer_id", :name => "receiver[manufacturer_id]"
    end
  end
end
