Feature: rottenpotatoes search moive
  
 #Declarative way
  Scenario: direct search article.
    Given John Enter search term 'Rocky'.
    When Do search.
    Then Single result is shown for 'Rocky'.
    