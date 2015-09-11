package 'git' do
  action :install
end

rpm_package 'jenkins' do
    source "/home/test1/jenkins-1.619-1.1.noarch.rpm"
	action :install
end