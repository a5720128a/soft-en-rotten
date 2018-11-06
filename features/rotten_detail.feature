Feature: rottenpotatoes more info movie
  
 #Declarative way
  Scenario: detail the movie.
    Given I am on the RotenPotatoes home page
    When I follow "More about Aladdin"
    Then I should see "Detail about Aladdin"