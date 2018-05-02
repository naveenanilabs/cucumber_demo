
require 'watir'

require 'colorize'

browser = Watir::Browser.new :chrome

Given (/^I am on the Liscio homepage$/)do

browser.goto "https://lisciostage.herokuapp.com"

end

When (/^enter blank details for Login$/)do

browser.text_field(:name,"user_email").set(" ")
browser.text_field(:name,"user_password").set(" ")

browser.button(:name,"commit").click

end

Then (/^error email shown$/) do

puts " Please fill in this field.".red

# browser.close

end

When (/^enter details for login$/)do

#browser = Watir::Browser.new :chrome

browser.goto "https://lisciostage.herokuapp.com"

browser.text_field(:name,"user_email").set("sandeep@anilabsinc.com")
browser.text_field(:name,"user_password").set("123456")

browser.button(:name,"commit").click
sleep 5

end
Then (/^compute the count$/) do


count = browser.ul(:class => ['nav','navbar-right','top-nav','add-function','notification']).li(:class => 'dropdown').link(:class => ['dropdown-toggle', 'plus-icon']).span(:class =>'counts').text
puts " count is #{count}".red
browser.ul(:class=>['nav', 'navbar-right', 'top-nav']).li(:class=>'dropdown').link(:class=> ['dropdown-toggle', 'user-dropdown', 'plus-icon']).click
end

Then (/^login details shown$/)do

puts " Sucessfully login"

browser.close

end

