
require 'watir'

require 'colorize'

browser = Watir::Browser.new :chrome

Given (/^I am on the Licio homepage$/)do

browser.goto "https://ani.liscio.me"

end

When (/^enter details for login$/)do

browser.text_field(:name,"user_email").set("sandeep@anilabsinc.com")
browser.text_field(:name,"user_password").set("123456")

browser.button(name: "commit").click

end

Then (/^compute the count$/) do


count = browser.ul(:class => ['nav','navbar-right','top-nav','add-function','notification']).li(:class => 'dropdown').link(:class => ['dropdown-toggle', 'plus-icon']).span(:class =>'counts').text
puts " coutn is #{count}".red

# browser.close

end

When (/^enter details for Register$/)do

browser = Watir::Browser.new :chrome

browser.goto "http://demo.guru99.com"

browser.text_field(:name,"emailid").set("guru99@gmail.com")

browser.button(:name,"btnLogin").click

end

Then (/^login details shown$/)do

puts " Sucessfully register"

browser.close

end
