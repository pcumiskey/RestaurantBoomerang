class ProgrammesController < ApplicationController

def index
	    @boomerang = Boomerang.find(params[:boomerang_id])
        @programmes = @boomerang.programmes
	end

	def show
		@boomerang = Boomerang.find(params[:boomerang_id])
		@programme = Programme.find(params[:id])
	end

end
