Feature:
  In order to neatly display the stored links
  As a user
  I want a nicely structure body content

Background:
  Given I am on the homepage

Scenario:
  Then I should see "Name_of_uri" within "body"

Scenario: 
  Then I should see "Description_of_uri" within "body"