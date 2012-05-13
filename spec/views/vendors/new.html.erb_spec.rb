require 'spec_helper'

describe "vendors/new" do
  before(:each) do
    assign(:vendor, stub_model(Vendor,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new vendor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendors_path, :method => "post" do
      assert_select "input#vendor_name", :name => "vendor[name]"
    end
  end
end
