require 'spec_helper'

describe "newtasks/index.html.erb" do
  before(:each) do
    assign(:newtasks, [
      stub_model(Newtask,
        :task => "Task",
        :timeduration => 1
      ),
      stub_model(Newtask,
        :task => "Task",
        :timeduration => 1
      )
    ])
  end

  it "renders a list of newtasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Task".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
