Feature: rottenpotatoes login and logout
  
 #Declarative way
  Scenario: Login and Logout
      Given I am on the RottenPotatoes home page
      When I follow "twitter"
      Then I should be on the twitter authentication
      And I press "อนุญาตแอพ"
      Then I should be on the RottenPotatoes home page
      And I should see "Signed in! Succeess"
      When I follow "Sign out"
      Then I should be on the RottenPotatoes home page
      And I should see "Signed out!"
      