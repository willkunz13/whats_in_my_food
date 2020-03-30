class SearchFacade

	def initialize(query)
		@query = query
	end

	def generate_foods
		service = UsdaService.new(query)
			service.food_list.map do |food|
				Food.new
			end
	end
end

		
