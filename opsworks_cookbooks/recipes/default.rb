package 'git' do
  action :install
end

rpm_package "jenkins-1.619-1.1.noarch.rpm" do 
	easy_install_binary :/home/test1/current
	action :install
end