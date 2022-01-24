apt_update 'Update the apt cache daily' do
    frequency 86400
    action :periodic
end

package 'mongodb'

service 'mongodb' do
    supports :status => true
    action :start
end


service 'mongodb' do
    supports :status => true
    action :enable
end