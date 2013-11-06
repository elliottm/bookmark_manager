Feature:
  In order to remember what links are my favourite
  As a user with a small memory
  I want to display links on a webpage

 Scenario:
   Given I am on the homepage
   And I have saved the links:
   | title   | url           | description |
   | Makers | www.makers.com | ahoy ahoy   |
   Then I should see "Makers"

