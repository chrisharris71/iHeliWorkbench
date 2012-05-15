require 'spec_helper'

describe "heli_kits/edit" do
  before(:each) do
    @heli_kit = assign(:heli_kit, stub_model(HeliKit,
      :name => "MyString",
      :part_number => "MyString",
      :size => "MyString",
      :power => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit heli_kit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heli_kits_path(@heli_kit), :method => "post" do
      assert_select "input#heli_kit_name", :name => "heli_kit[name]"
      assert_select "input#heli_kit_part_number", :name => "heli_kit[part_number]"
      assert_select "input#heli_kit_size", :name => "heli_kit[size]"
      assert_select "input#heli_kit_power", :name => "heli_kit[power]"
      assert_select "input#heli_kit_manufacturer_id", :name => "heli_kit[manufacturer_id]"
    end
  end
end
