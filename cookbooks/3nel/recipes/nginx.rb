
package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

# use our custom nginx.conf, rather than the one that ships in the nginx cookbook
# this avoids the nginx and my-app cookbooks from fighting for control of
# the same target file
#resources('template[nginx.conf]').cookbook 'my-app'
