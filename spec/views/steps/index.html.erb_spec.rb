require 'spec_helper'

describe "steps/index" do
  before(:each) do
    assign(:steps, [
      stub_model(Step,
        :title => "Title",
        :body => "MyText",
        :status => 1,
        :wish_id => 2
      ),
      stub_model(Step,
        :title => "Title",
        :body => "MyText",
        :status => 1,
        :wish_id => 2
      )
    ])
  end

  it "renders a list of steps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
