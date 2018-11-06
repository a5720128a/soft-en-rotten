Given(/^I am on the RotenPotatoes home page$/) do
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end

When(/^I follow a "([^"]*)"$/) do |arg1|
  find(:row, arg1).click
end

Then(/^I should see header "([^"]*)"$/) do |arg1|
  page.should have_content: arg1 
end