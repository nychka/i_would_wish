require 'spec_helper'

describe "wishes/show" do
  before(:each) do
    @wish = assign(:wish, stub_model(Wish,
      :title => "Title",
      :status => 1,
      :body => "MyText",
      :category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
