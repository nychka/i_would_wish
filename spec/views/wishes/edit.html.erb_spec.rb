require 'spec_helper'

describe "wishes/edit" do
  before(:each) do
    @wish = assign(:wish, stub_model(Wish,
      :title => "MyString",
      :status => 1,
      :body => "MyText",
      :category_id => 1
    ))
  end

  it "renders the edit wish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wish_path(@wish), "post" do
      assert_select "input#wish_title[name=?]", "wish[title]"
      assert_select "input#wish_status[name=?]", "wish[status]"
      assert_select "textarea#wish_body[name=?]", "wish[body]"
      assert_select "input#wish_category_id[name=?]", "wish[category_id]"
    end
  end
end
