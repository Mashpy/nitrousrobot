task :nitrous => :environment do
require 'rubygems'
require 'mechanize'
  agent = Mechanize.new

  agent.get("https://www.nitrous.io/users/auth/github")
  form = agent.page.forms.last
  form.login = "mashpy"
  form.password = "Inputyourpassword"
  form.submit
  url = 'https://www.nitrous.io/app#/boxes/132255/terminal'
page = agent.get url # here checking authentication if success then redirecting to destination
p page
end