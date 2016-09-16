#!/bin/ruby

require 'net/http'
require 'json'

url = URI.parse('http://api.openweathermap.org/data/2.5/weather?q=Mar%20del%20plata&units=metric')

req = Net::HTTP::Get.new(url.to_s)

res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

body_p = JSON.parse res.body

temp = body_p["main"]["temp"].to_s + ' C'

puts temp
