# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :step do
    title "MyString"
    body "MyText"
    start "2014-06-07 13:46:19"
    finish "2014-06-07 13:46:19"
    status 1
    wish_id 1
  end
end
