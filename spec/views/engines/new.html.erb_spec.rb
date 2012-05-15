require 'spec_helper'

describe "engines/new" do
  before(:each) do
    assign(:engine, stub_model(Engine,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new engine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => engines_path, :method => "post" do
      assert_select "input#engine_part_number", :name => "engine[part_number]"
      assert_select "input#engine_size", :name => "engine[size]"
      assert_select "input#engine_manufacturer_id", :name => "engine[manufacturer_id]"
    end
  end
end
