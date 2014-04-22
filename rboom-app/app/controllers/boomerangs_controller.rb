class BoomerangsController < ApplicationController

	def index
        @boomerangs = Boomerang.all
	end

def show
		
		@boomerang = Boomerang.find(params[:id])
	end


  def  edit
		
		@boomerang = Boomerang.find(params[:id])
	end

  def update
    	@boomerang= Boomerang.find(params[:id])
   
    	
    	@boomerang.update(boomerang_params)

    	redirect_to @boomerang 
   
    end


     def new
        @boomerang = Boomerang.new

    end 

    def create
        
        @boomerang  = Boomerang.new(boomerang_params)
        @boomerang.save

        redirect_to boomerangs_url
    end

     def destroy
          @boomerang = Boomerang.find(params[:id])
          @boomerang.destroy
          redirect_to boomerangs_url
    end



private 
       def boomerang_params 
        params.require(:boomerang).
                            permit(:name, :fb_name, :tel_no, :email, :contact_name,:header_file)
       end


end
