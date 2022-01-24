apt_update 'Update the apt cache daily' do
    frequency 86400
    action :periodic
end

include_recipe '::instalador_dependencias'
include_recipe '::instalador_node'
include_recipe '::instalador_paquetes_node'