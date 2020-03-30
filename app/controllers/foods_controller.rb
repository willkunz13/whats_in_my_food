class FoodsController < ApplicationController
	def index
		query = params[:q].gsub(' ', '%20')

		conn = Faraday.new(url: "https://api.nal.usda.gov")
		response = conn.get("/fdc/v1/search?api_key=#{ENV["MM_API_KEY"]}\&ingredients=#{query}")
		json = JSON.parse(response.body, symbolize_names:true)
		@count = json[:foods].size 
		@foods = json[:foods].slice(0,10)
		binding.pry
	end
end
