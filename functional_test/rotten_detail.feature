Feature: rottenpotatoes detail moive
  
 #Declarative way
  Scenario: look and edit detail the movie.
    Given Mike is on the page movie name 'godfather'
    And Mike look detail of the movie.
    And Mike edit the information of the movie.
    When Mike save the information of the movie.
    Then The information of a movie was added to the database.