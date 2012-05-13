require 'spec_helper'

describe "vendors/edit" do
  before(:each) do
    @vendor = assign(:vendor, stub_model(Vendor,
      :name => "MyString"
    ))
  end

  it "renders the edit vendor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendors_path(@vendor), :method => "post" do
      assert_select "input#vendor_name", :name => "vendor[name]"
    end
  end
end
