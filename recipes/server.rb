include_recipe 'selenium::default'

directory node['selenium']['server']['installpath']

remote_file File.join(node['selenium']['server']['installpath'], 'selenium-server-standalone.jar') do
  #source "http://selenium.googlecode.com/files/selenium-server-standalone-#{node['selenium']['server']['version']}.jar"
  source "http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.1.jar"
  action :create
  mode 0644
end
