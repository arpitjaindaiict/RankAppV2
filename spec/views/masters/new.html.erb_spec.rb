require 'spec_helper'

describe "masters/new.html.erb" do
  before(:each) do
    assign(:master, stub_model(Master,
      :e_name => "MyString",
      :task => "MyString",
      :points => 1,
      :comment => "MyString"
    ).as_new_record)
  end

  it "renders new master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => masters_path, :method => "post" do
      assert_select "input#master_e_name", :name => "master[e_name]"
      assert_select "input#master_task", :name => "master[task]"
      assert_select "input#master_points", :name => "master[points]"
      assert_select "input#master_comment", :name => "master[comment]"
    end
  end
end
