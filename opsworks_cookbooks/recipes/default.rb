package 'git' do
  action :install
end

remote_file "/home/ec2-user/jenkins-1.619-1.1.noarch.rpm" do
    source "https://s3-us-west-2.amazonaws.com/testbuildpublish2/ETS/jenkins-1.619-1.1.noarch.rpm"
    action :create
	end 

rpm_package 'jenkins-1.619-1.1.noarch.rpm' do
    source "/home/ec2-user/jenkins-1.619-1.1.noarch.rpm"
	action :install
end

service 'jenkins' do 
   action :start
end