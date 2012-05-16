require 'spec_helper'

describe "exhausts/new" do
  before(:each) do
    assign(:exhaust, stub_model(Exhaust,
      :part_number => "MyString",
      :size => "MyString",
      :works_with => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new exhaust form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exhausts_path, :method => "post" do
      assert_select "input#exhaust_part_number", :name => "exhaust[part_number]"
      assert_select "input#exhaust_size", :name => "exhaust[size]"
      assert_select "input#exhaust_works_with", :name => "exhaust[works_with]"
      assert_select "input#exhaust_manufacturer_id", :name => "exhaust[manufacturer_id]"
    end
  end
end
