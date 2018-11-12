=begin
Given(/^I am on the Roten Potatoes home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I follow movie "([^"]*)"$/) do |text|
  #visit "https://rottenpotatoes-aruk888.c9users.io/movies/1"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

Then(/^I should be on the Edit info page "([^"]*)"$/) do |text|
  #page.should have_content text
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I follow "([^"]*)"$/) do |element|
  #click_on(element)
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  #fill_in arg1, with: arg2
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

And(/^I press button "([^"]*)"$/) do |element|
  #click_button(element)
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

Then(/^I should be on the page show detail$/) do
  #visit "https://rottenpotatoes-aruk888.c9users.io/movies/1"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

And(/^I should see "([^"]*)"$/) do |text|
  #page.should have_content text
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

And(/^I press "([^"]*)"$/) do |element|
  #click_button(element)
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

Then(/^I should be on the RottenPotatoes home page$/) do 
  #visit "https://rottenpotatoes-aruk888.c9users.io/movies/"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end
=end