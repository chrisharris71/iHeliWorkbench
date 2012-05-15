require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :user_id => 1,
      :user_name => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_user_id", :name => "project[user_id]"
      assert_select "input#project_user_name", :name => "project[user_name]"
    end
  end
end
