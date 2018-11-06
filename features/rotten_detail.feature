Feature: rottenpotatoes more info movie
  
 #Declarative way
  Scenario: detail the movie.
    Given I am on the RotenPotatoes home page
    When I follow a "More about Aladdin"
    Then I should see header "Detail about Aladdin"