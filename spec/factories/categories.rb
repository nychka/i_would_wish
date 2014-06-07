# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    title "MyString"
    noun "MyString"
    verb "MyString"
    user_id 1
  end
end
