Feature:
  In order to remove a link I do not want
  As a user
  I want to be able to delete any links saved

Background: 
  Given I am on the homepage
  And I add the following links:
   | title   | url           | description |
   | Makers  | makers.com    | website     |

Scenario:
  When I follow "delete" 
  And I press "confirm"
  Then I should not see "website"