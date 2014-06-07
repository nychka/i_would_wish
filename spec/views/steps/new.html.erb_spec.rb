require 'spec_helper'

describe "steps/new" do
  before(:each) do
    assign(:step, stub_model(Step,
      :title => "MyString",
      :body => "MyText",
      :status => 1,
      :wish_id => 1
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", steps_path, "post" do
      assert_select "input#step_title[name=?]", "step[title]"
      assert_select "textarea#step_body[name=?]", "step[body]"
      assert_select "input#step_status[name=?]", "step[status]"
      assert_select "input#step_wish_id[name=?]", "step[wish_id]"
    end
  end
end
