Given(/^I am on the RottenPotatoes home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I follow a "([^"]*)"$/) do |element|
  click_on(element)
end

Then(/^I should be on the Create New Movie page$/) do 
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

When(/^I fill "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

And(/^I select "([^"]*)" from "([^"]*)"$/) do |arg1, arg2|
  find(:select, arg2).first(:option, arg1).select_option
end

When(/^I fill in a "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

And(/^I press a "([^"]*)"$/) do |element|
  click_button(element)
end

Then(/^I should be on the Rotten Potatoes home page$/) do 
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/"
end

And(/^I should see a "([^"]*)"$/) do |arg1|
  page.has_content?(arg1)
end
