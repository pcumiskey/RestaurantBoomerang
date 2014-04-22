class ProgrammesController < ApplicationController

def index
	    @boomerang = Boomerang.find(params[:boomerang_id])
        @programmes = @boomerang.programmes
	end
end
