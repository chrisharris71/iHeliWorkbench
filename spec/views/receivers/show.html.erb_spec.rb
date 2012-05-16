require 'spec_helper'

describe "receivers/show" do
  before(:each) do
    @receiver = assign(:receiver, stub_model(Receiver,
      :part_number => "Part Number",
      :size => "Size",
      :channels => 1,
      :has_gov => false,
      :has_fbl_unit => false,
      :has_volt_reg => false,
      :manufacturer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    rendered.should match(/Size/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/2/)
  end
end
