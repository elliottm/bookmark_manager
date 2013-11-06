Given(/^I have saved the links:$/) do |links|
  links.hashes.each do | link |
    fill_in(:title, :with => link['title'])
    fill_in(:url, :with => link['url'])
    fill_in(:description, :with => link['ahoy ahoy'])
    click_button 'Add link'
  end
end