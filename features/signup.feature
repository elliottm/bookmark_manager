Feature:
  In order to have a unique account
  As a user
  I want to be able to sign up

Scenario:
  Given I am on the homepage
  When I press "Sign up"
  And I complete form
  Then I should see "Welcome Mark"