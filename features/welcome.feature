Feature: Welcome
  In order to read the page
  As a viewer
  I want to see the home page of my app
  
	Scenario: View welcome page
  		Given I am on the home page
  		Then I should see "All Movies"
  		When I click banner "ROTTEN POTATOES"
  		Then I should be on the "ROTTEN POTATOES" in "banner"