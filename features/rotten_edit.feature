Feature: rottenpotatoes edit detail the movie
  
 #Declarative way
  Scenario: look and edit detail the movie.
    Given I am on the RotenPotatoes home page
    When I follow "More about Aladdin"
    Then I should be on the Edit info page
    When I follow "Edit info"
    When I fill in "Description" with "Fantasy moive"
    And I press “Save Changes”
    Then I should be on the page show detail
    And I should see "Fantasy moive"
    And I press "Cancel"
    Then I should be on the RottenPotatoes home page