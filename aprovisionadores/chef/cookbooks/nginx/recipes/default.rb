package 'nginx'

#file '/etc/nginx/sites-available/default' do
#    action :delete                    
#end

template '/etc/nginx/sites-available/mean' do
    source 'mean.erb'
end

execute 'habilitar_virtual_host' do
    command  'ln -s /etc/nginx/sites-available/mean /etc/nginx/sites-enabled/'
end

service 'nginx' do
    supports :status => true
    action :nothing
  end

template '/etc/nginx/nginx.conf' do
    source 'nginx.conf.erb'
    notifies :restart, resources(:service => "nginx")
end