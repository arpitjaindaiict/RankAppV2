require 'spec_helper'

describe "upcoming_tasks/index.html.erb" do
  before(:each) do
    assign(:upcoming_tasks, [
      stub_model(UpcomingTask,
        :task => "Task",
        :TimeDuration => 1
      ),
      stub_model(UpcomingTask,
        :task => "Task",
        :TimeDuration => 1
      )
    ])
  end

  it "renders a list of upcoming_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Task".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
