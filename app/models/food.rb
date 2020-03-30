class Food
	attr_reader :description, :gtinUpc, :brandOwner, :ingredients

	def initialize(data)
		@description = data[:description]
		@gtinUpc = data[:gtinUpc]
		@brandOwner = data[:brandOwner]
		@ingredients = data[:ingredients]
	end
end
