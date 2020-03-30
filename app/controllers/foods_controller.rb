class FoodsController < ApplicationController
	def index
		query = params[:q].gsub(' ', '%20')

		conn = Faraday.new(url: "https://api.nal.usda.gov")
		response = conn.get("/fdc/v1/search?api_key=#{ENV["MM_API_KEY"]}\&ingredients=#{query}&pageNumber=1")
		json = JSON.parse(response.body, symbolize_names:true)
		@foods = json[:foods]
		binding.pry
	end
end
