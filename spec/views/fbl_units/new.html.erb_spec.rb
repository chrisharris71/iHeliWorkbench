require 'spec_helper'

describe "fbl_units/new" do
  before(:each) do
    assign(:fbl_unit, stub_model(FblUnit,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new fbl_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fbl_units_path, :method => "post" do
      assert_select "input#fbl_unit_part_number", :name => "fbl_unit[part_number]"
      assert_select "input#fbl_unit_size", :name => "fbl_unit[size]"
      assert_select "input#fbl_unit_manufacturer_id", :name => "fbl_unit[manufacturer_id]"
    end
  end
end
