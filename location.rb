
require 'rubygems'
require 'sinatra'
require 'net/http'
require 'rexml/document'
YAHOOAPIKEY='pjblkAXV34GkZlm2vdghnREdcvV9AO4rQOPjGxzg2l8YVK3If9oGEyC9vcNezDypZTW7'
LASTFMAPIKEY='1703361de662fa5ec151876a537c4c98'

class Request
  
  def make_request url, *args
  #  if args[0][:method] == 'get'
      
  return  Net::HTTP.get URI.parse(url)
  #else 
# do post    
   
   #end
  end
  
end

get '/' do

response=Net::HTTP.get URI.parse('http://local.yahooapis.com/MapsService/V1/geocode?appid='+YAHOOAPIKEY+'&street=Albert+Road&city=London&state=London')

end

get '/:artist' do
r=Request.new
 r.make_request 'http://ws.audioscrobbler.com/2.0/?method=artist.getevents&artist='+CGI.escape(params[:artist])+'&api_key='+LASTFMAPIKEY, {:mode => 'get'}
end 

#puts "Where are you?"
#STDOUT.flush
#location = gets.chomp
#puts location + "?"
#print "excellent. here are your gig listings:"

#http://local.yahooapis.com/MapsService/V1/geocode?appid=YD-9G7bey8_JXxQP6rxl.fBFGgCdNjoDMACQA--&street=701+First+Ave&city=Sunnyvale&state=CA

  