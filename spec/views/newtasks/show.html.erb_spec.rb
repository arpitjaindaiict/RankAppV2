require 'spec_helper'

describe "newtasks/show.html.erb" do
  before(:each) do
    @newtask = assign(:newtask, stub_model(Newtask,
      :task => "Task",
      :timeduration => 1
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
