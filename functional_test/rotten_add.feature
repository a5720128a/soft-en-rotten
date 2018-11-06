Feature: rottenpotatoes add moive
  
 #Declarative way
  Scenario: Add the name of the movie.
    Given Mike is on the site. rottenpotatoes
    And Mike put the information of the movie.
    When Mike add a movie to the site.
    Then The movie was added to the database.