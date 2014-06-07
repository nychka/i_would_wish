require 'spec_helper'

describe "wishes/index" do
  before(:each) do
    assign(:wishes, [
      stub_model(Wish,
        :title => "Title",
        :status => 1,
        :body => "MyText",
        :category_id => 2
      ),
      stub_model(Wish,
        :title => "Title",
        :status => 1,
        :body => "MyText",
        :category_id => 2
      )
    ])
  end

  it "renders a list of wishes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
