Feature:
  In order to add a link
  As a user who wants to store the link in the DB
  I want to fill in the form with the details

Scenario:
 Given I am on the homepage
 When I follow add link



 within("#new_link") do
    fill_in 'Login', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
  end




