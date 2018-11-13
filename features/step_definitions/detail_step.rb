Given(/^I am on the RotenPotatoes home page$/) do
  #visit "https://rottenpotatoes-aruk888.c9users.io/movies/101"
  visit "https://rottenpotatoes-aruk888.c9users.io/movies"
end



When(/^I follow a "([^"]*)"$/) do |arg1|
  
  find('table').all('tr').map { |row| row.all('th, td').map { |arg1| arg1.text.strip } }
end

Then(/^I should see header "([^"]*)"$/) do |arg1|
  #page.should have_content: arg1 
  visit "https://rottenpotatoes-aruk888.c9users.io/movies/"
end

