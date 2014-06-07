require 'spec_helper'

describe "steps/show" do
  before(:each) do
    @step = assign(:step, stub_model(Step,
      :title => "Title",
      :body => "MyText",
      :status => 1,
      :wish_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
