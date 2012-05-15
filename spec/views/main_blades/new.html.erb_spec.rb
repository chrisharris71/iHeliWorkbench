require 'spec_helper'

describe "main_blades/new" do
  before(:each) do
    assign(:main_blade, stub_model(MainBlade,
      :part_number => "MyString",
      :blade_length => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new main_blade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => main_blades_path, :method => "post" do
      assert_select "input#main_blade_part_number", :name => "main_blade[part_number]"
      assert_select "input#main_blade_blade_length", :name => "main_blade[blade_length]"
      assert_select "input#main_blade_size", :name => "main_blade[size]"
      assert_select "input#main_blade_manufacturer_id", :name => "main_blade[manufacturer_id]"
    end
  end
end
