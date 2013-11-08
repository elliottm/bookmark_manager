When(/^I complete form$/) do 
  fill_in('name', :with => 'Mark') 
  fill_in('email', :with => 'mark@gmail.com')
  fill_in('password', :with => 'secret')
  click_button 'Sign up'
end
