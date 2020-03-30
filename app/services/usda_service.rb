class UsdaService
	def initiialize(query)
		@query = query
	end

	def food_list
		get_json	
	end

	private

	def conn
		conn = Faraday.new(url: "https://api.nal.usda.gov")
    conn.get("/fdc/v1/search?api_key=#{ENV["MM_API_KEY"]}\&ingredients=#{@query}")
	end

	def get_json
		response = conn
		JSON.parse(response.body, symbolize_names:true)
	end
