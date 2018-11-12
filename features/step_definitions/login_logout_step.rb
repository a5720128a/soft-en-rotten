=begin
Given(/^I am on the Rotten Potatoes home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I need a login "([^"]*)"$/) do |element|
  #click_on(element)
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

And(/^I should be on the twitter authentication$/) do 
  #visit "https://api.twitter.com/oauth/authorize?oauth_token=Z8-xegAAAAAA81clAAABZuwLc3w"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

And (/^I press "([^"]*)"$/) do |element|
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

Then (/^I should be on the RottenPotatoes home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

And (/^I should see "([^"]*)"$/) do |element|
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

When (/^I follow "([^"]*)"$/) do |element|
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

Then (/^I should be on the RottenPotatoes home page 2$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/new"
end

And (/^I should be see "([^"]*)"$/) do |element|
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end
=end

