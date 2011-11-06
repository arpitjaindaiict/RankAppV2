require 'spec_helper'

describe "newtasks/edit.html.erb" do
  before(:each) do
    @newtask = assign(:newtask, stub_model(Newtask,
      :task => "MyString",
      :timeduration => 1
    ))
  end

  it "renders the edit newtask form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => newtasks_path(@newtask), :method => "post" do
      assert_select "input#newtask_task", :name => "newtask[task]"
      assert_select "input#newtask_timeduration", :name => "newtask[timeduration]"
    end
  end
end
