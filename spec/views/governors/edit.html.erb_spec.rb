require 'spec_helper'

describe "governors/edit" do
  before(:each) do
    @governor = assign(:governor, stub_model(Governor,
      :part_number => "MyString",
      :size => "MyString",
      :manufacturer_id => 1
    ))
  end

  it "renders the edit governor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => governors_path(@governor), :method => "post" do
      assert_select "input#governor_part_number", :name => "governor[part_number]"
      assert_select "input#governor_size", :name => "governor[size]"
      assert_select "input#governor_manufacturer_id", :name => "governor[manufacturer_id]"
    end
  end
end
