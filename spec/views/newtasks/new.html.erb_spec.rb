require 'spec_helper'

describe "newtasks/new.html.erb" do
  before(:each) do
    assign(:newtask, stub_model(Newtask,
      :task => "MyString",
      :timeduration => 1
    ).as_new_record)
  end

  it "renders new newtask form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => newtasks_path, :method => "post" do
      assert_select "input#newtask_task", :name => "newtask[task]"
      assert_select "input#newtask_timeduration", :name => "newtask[timeduration]"
    end
  end
end
