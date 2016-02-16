require "instagram"
# require "restfulclient"

class HomeController < ApplicationController
  def index
  end

  def hashtag_search
  	client = Instagram.client.new do |config|
		  config.consumer_key    = ENV['CONSUMER_KEY']
		  config.consumer_secret = ENV['CONSUMER_SECRET']
	end
	@results = client.search(params[:query])
	render "index"
	  	
	end
end
