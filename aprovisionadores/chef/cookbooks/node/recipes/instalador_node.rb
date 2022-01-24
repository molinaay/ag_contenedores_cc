execute 'agregar_node_repositorio' do
    command  'curl -sL https://deb.nodesource.com/setup_14.x | bash -'
end

package 'nodejs'