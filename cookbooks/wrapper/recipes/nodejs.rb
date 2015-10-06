
execute 'npm_install' do
  command 'npm install -g bower grunt'
  user 'root'
  action :run
end

