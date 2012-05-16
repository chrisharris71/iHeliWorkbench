require 'spec_helper'

describe "paddles/new" do
  before(:each) do
    assign(:paddle, stub_model(Paddle,
      :part_number => "MyString",
      :paddle_length => 1,
      :size => "MyString",
      :manufacturer_id => 1
    ).as_new_record)
  end

  it "renders new paddle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paddles_path, :method => "post" do
      assert_select "input#paddle_part_number", :name => "paddle[part_number]"
      assert_select "input#paddle_paddle_length", :name => "paddle[paddle_length]"
      assert_select "input#paddle_size", :name => "paddle[size]"
      assert_select "input#paddle_manufacturer_id", :name => "paddle[manufacturer_id]"
    end
  end
end
