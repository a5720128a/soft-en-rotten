=begin
Given(/^I am on the RotenPotatoes home page$/) do
  #visit "https://rottenpotatoes-aruk888.c9users.io/movies"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I follow a "([^"]*)"$/) do |arg1|
  #click_link('https://rottenpotatoes-aruk888.c9users.io/movies/1')
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

Then(/^I should see header "([^"]*)"$/) do |arg1|
  #page.should have_content: arg1 
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/"
end

=end