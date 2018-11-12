Feature: rottenpotatoes login and logout
  
 #Declarative way
  Scenario: Login and Logout
      Given I am on the Rotten Potatoes home page
      When I need a login "twitter"
      Then I should be on the twitter authentication
      And I press "Authorize app"
      Then I should be on the RottenPotatoes home page
      And I should see "Signed in! Succeess"
      When I follow "Sign out"
      Then I should be on the RottenPotatoes home page 2
      And I should be see "Signed out!"
      