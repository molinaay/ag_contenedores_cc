execute 'instalar_yarn' do
    command  'npm install -g yarn'
end

execute 'instalar_gulp' do
    command  'npm install -g gulp'
end

execute 'instalar_pm2' do
    command  'npm install pm2 -g'
end
