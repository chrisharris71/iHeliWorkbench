require 'spec_helper'

describe "exhausts/edit" do
  before(:each) do
    @exhaust = assign(:exhaust, stub_model(Exhaust,
      :part_number => "MyString",
      :size => "MyString",
      :works_with => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit exhaust form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exhausts_path(@exhaust), :method => "post" do
      assert_select "input#exhaust_part_number", :name => "exhaust[part_number]"
      assert_select "input#exhaust_size", :name => "exhaust[size]"
      assert_select "input#exhaust_works_with", :name => "exhaust[works_with]"
      assert_select "input#exhaust_manufacturer_id", :name => "exhaust[manufacturer_id]"
    end
  end
end
