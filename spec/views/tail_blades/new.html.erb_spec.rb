require 'spec_helper'

describe "tail_blades/new" do
  before(:each) do
    assign(:tail_blade, stub_model(TailBlade,
      :part_number => "MyString",
      :blade_length => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new tail_blade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tail_blades_path, :method => "post" do
      assert_select "input#tail_blade_part_number", :name => "tail_blade[part_number]"
      assert_select "input#tail_blade_blade_length", :name => "tail_blade[blade_length]"
      assert_select "input#tail_blade_size", :name => "tail_blade[size]"
      assert_select "input#tail_blade_manufacturer_id", :name => "tail_blade[manufacturer_id]"
    end
  end
end
