require "net/http"
require "uri"


class SmsController < ApplicationController


  def sms_send
    uri = URI.parse("http://google.com/")

    # Shortcut
    response = Net::HTTP.get_response(uri)

    # Will print response.body
    Net::HTTP.get_print(uri)

    # Full
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.request(Net::HTTP::Get.new(uri.request_uri))  
  
  
end
