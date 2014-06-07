require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :title => "Title",
        :noun => "Noun",
        :verb => "Verb",
        :user_id => 1
      ),
      stub_model(Category,
        :title => "Title",
        :noun => "Noun",
        :verb => "Verb",
        :user_id => 1
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Noun".to_s, :count => 2
    assert_select "tr>td", :text => "Verb".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
