package 'aide' do
  action :install
end

template node['aide']['config'] do
  notifies :run, 'bash[generate_database]', :delayed
end

cron_d 'aide' do
  action :create
  minute '30'
  user 'root'
  command "#{node['aide']['binary']} #{node['aide']['extra_parameters']} --check -V3"
  mailto node['aide']['cron_mailto'] if node['aide']['cron_mailto']
end

cron_d 'aide-detailed' do
  action :create
  minute '0'
  hour '5'
  weekday '1'
  user 'root'
  command "#{node['aide']['binary']} #{node['aide']['extra_parameters']} --check -V5"
  mailto node['aide']['cron_mailto'] if node['aide']['cron_mailto']
end

bash 'generate_database' do
  action :nothing
  not_if { node['aide']['testmode'] == 'true' }
  code "#{node['aide']['binary']} #{node['aide']['extra_parameters']} --init"
end
