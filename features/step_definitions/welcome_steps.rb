Given(/^I am on the home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content text
end

When(/^I click banner "([^"]*)"$/) do |element|
  click_on(element)
end

Then(/^I should be on the "([^"]*)" on the home page$/) do |arg1|
  page.should have_content arg1
end