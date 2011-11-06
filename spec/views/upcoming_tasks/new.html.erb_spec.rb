require 'spec_helper'

describe "upcoming_tasks/new.html.erb" do
  before(:each) do
    assign(:upcoming_task, stub_model(UpcomingTask,
      :task => "MyString",
      :TimeDuration => 1
    ).as_new_record)
  end

  it "renders new upcoming_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => upcoming_tasks_path, :method => "post" do
      assert_select "input#upcoming_task_task", :name => "upcoming_task[task]"
      assert_select "input#upcoming_task_TimeDuration", :name => "upcoming_task[TimeDuration]"
    end
  end
end
