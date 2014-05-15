#
# url_get.rb
#

module Puppet::Parser::Functions

newfunction(:url_get, :type => :rvalue, :doc => "") do |args|
    response = Net::HTTP.get_response(args[0])
    data = response.body
    return data
end




end
