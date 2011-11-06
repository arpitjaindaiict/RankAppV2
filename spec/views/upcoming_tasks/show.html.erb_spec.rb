require 'spec_helper'

describe "upcoming_tasks/show.html.erb" do
  before(:each) do
    @upcoming_task = assign(:upcoming_task, stub_model(UpcomingTask,
      :task => "Task",
      :TimeDuration => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Task/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
