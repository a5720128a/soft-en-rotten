Feature: rottenpotatoes add moive
  
 #Declarative way
  Scenario: Add a movie.
      Given I am on the RottenPotatoes home page
      When I follow "Add new movie"
      Then I should be on the Create New Movie page
      When I fill in "Title" with "Men In Black"
      And I select "PG-13" from "Rating"
      When I fill in a "Description" with "Action and si-fi movie"
      And I press "Save Create"
      Then I should be on the RottenPotatoes home page
      And I should see a "Men In Black"
     