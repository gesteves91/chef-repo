nodejs_npm "express"

nodejs_npm "async" do
  version "0.6.2"
end

#nodejs_npm "request" do
#  url "github mikeal/request"
#end

nodejs_npm "grunt" do
  path "/home/ubuntu/grunt"
  json true
  user "ubuntu"
end