Given /^I am on the Categories page$/ do
  visit categories_path
end

When /^I fill in (.+) with (.+)$/ do |field, value|
  fill_in field, with: value
end

And /^I click on (.+) button$/ do |button|
  click_button button
end

Then /^I should see (.+)$/ do |content|
  expect(page).to have_content content
end
