# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wish do
    title "MyString"
    start "2014-06-07 13:45:23"
    finish "2014-06-07 13:45:23"
    status 1
    body "MyText"
    category_id 1
  end
end
