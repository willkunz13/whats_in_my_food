class FoodsController < ApplicationController
	def index
		render locals: {
			search: SearchFacade.new(params[:q].gsub(' ', '%20'))
		}
	end
end
