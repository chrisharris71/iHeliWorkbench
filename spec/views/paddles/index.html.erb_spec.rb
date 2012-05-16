require 'spec_helper'

describe "paddles/index" do
  before(:each) do
    assign(:paddles, [
      stub_model(Paddle,
        :part_number => "Part Number",
        :paddle_length => 1,
        :size => "Size",
        :manufacturer_id => 2
      ),
      stub_model(Paddle,
        :part_number => "Part Number",
        :paddle_length => 1,
        :size => "Size",
        :manufacturer_id => 2
      )
    ])
  end

  it "renders a list of paddles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
