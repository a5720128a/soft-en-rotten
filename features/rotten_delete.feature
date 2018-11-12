Feature: rottenpotatoes delete moive
  
 #Declarative way
  Scenario: delete the movie.
    Given I am on the RotenPotatoes home page
    When I follow "More about Aladdin"
    Then I should be on the Edit info page
    When I follow to "Delete"
    Then I should be on the RottenPotatoes home page
    And I should not see "Aladdin"
   