artifact_file "/var/lib/tomcat7/webapps/demo.war" do
  location "https://s3.amazonaws.com/vsak-bucket/dwrdemo.war"
  owner 'tomcat7'
  group 'tomcat7'
end
