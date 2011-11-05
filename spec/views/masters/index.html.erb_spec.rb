require 'spec_helper'

describe "masters/index.html.erb" do
  before(:each) do
    assign(:masters, [
      stub_model(Master,
        :e_name => "E Name",
        :task => "Task",
        :points => 1,
        :comment => "Comment"
      ),
      stub_model(Master,
        :e_name => "E Name",
        :task => "Task",
        :points => 1,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of masters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "E Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Task".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
