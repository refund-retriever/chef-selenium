include_recipe 'selenium::default'

directory node['selenium']['server']['installpath']

splittedversion = node['selenium']['server']['version'].split('.')
majorversion = splittedversion[0] + '.' + splittedversion[1]

if majorversion.to_f >= 2.39
  url = "http://selenium-release.storage.googleapis.com/#{majorversion}/selenium-server-standalone-#{node['selenium']['server']['version']}.jar"
else
  url = "http://selenium.googlecode.com/files/selenium-server-standalone-#{node['selenium']['server']['version']}.jar"
end

remote_file File.join(node['selenium']['server']['installpath'], 'selenium-server-standalone.jar') do
  source url
  action :create
  mode 0644
end
