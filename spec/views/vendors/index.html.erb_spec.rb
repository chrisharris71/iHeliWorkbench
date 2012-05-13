require 'spec_helper'

describe "vendors/index" do
  before(:each) do
    assign(:vendors, [
      stub_model(Vendor,
        :name => "Name"
      ),
      stub_model(Vendor,
        :name => "Name"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
