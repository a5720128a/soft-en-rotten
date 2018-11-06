Feature: rottenpotatoes delete moive
  
 #Declarative way
  Scenario: delete the movie.
    Given John is on the page movie name 'godfather'.
    And John want to remove the movie.
    When John remove the movie.
    Then The movie was remove to the database.
   