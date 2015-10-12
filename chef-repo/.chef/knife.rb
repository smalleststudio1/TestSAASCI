log_level                :info
log_location             STDOUT
node_name                'chaoshen'
client_key               '/home/chaoshen/project/chef-repo/.chef/chaoshen.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://chaoshen-vm:443'
syntax_check_cache_path  '/home/chaoshen/project/chef-repo/.chef/syntax_check_cache'
cookbook_path [ './cookbooks' ]
