#!/usr/bin/env ruby

require 'net/http'
require 'ruby-debug'
require 'json'

module Hotlight
  # Given a location (or list of locations) return a json object of store info, including hotlight status
  # eg status('1115') or status('1115,1112')
  def Hotlight.status(params)
    uri = nil
    uri = URI('http://locations.krispykreme.com/Hotlight/HotLightStatus.ashx') if params.key? 'locations'
    uri = URI('http://locations.krispykreme.com/Hotlight/ListLocations.ashx') if params.key? 'zipcode'
    raise "unknown parameter #{params.inspect}" unless uri
    response = Net::HTTP.post_form(uri,params)

    if response.is_a?(Net::HTTPSuccess)
      result = JSON.parse(response.body)
      locations = result["data"]["locations"]
    else
      nil
    end
  end
end




