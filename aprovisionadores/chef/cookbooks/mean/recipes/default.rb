directory '/etc/mean' do
    action :create
  end
  
execute 'clonar_repositorio_mean' do
    command  'git clone https://github.com/meanjs/mean /etc/mean'
end

execute 'instalar_mean' do
    command  'yarn install'
    cwd '/etc/mean'
end

template '/etc/mean/server.js' do
    source 'server.js.erb'
end

execute 'iniciar_server.js' do
    command  'pm2 start /etc/mean/server.js'
end

execute 'habilitar_server.js_al_iniciar' do
    command  'pm2 startup'
end

