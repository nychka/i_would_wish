require 'spec_helper'

describe "categories/show" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :title => "Title",
      :noun => "Noun",
      :verb => "Verb",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Noun/)
    rendered.should match(/Verb/)
    rendered.should match(/1/)
  end
end
