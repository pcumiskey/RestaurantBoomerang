class MessagesController < ApplicationController

	def index
		 @boomerang = Boomerang.find(params[:boomerang_id])
         @programme = Programme.find(params[:programme_id])
         @messages = @programme.messages
	end


     def new
        @programme = Programme.find(params[:programme_id])
        		@message = @programme.messages.new

    end 

  def create
        
        @new_message = Message.new(message_params)
        programme = Programme.find(params [:message.programme_id])
        @new_message.programme = programme
        @new_message.save
        redirect_to boomerang_programme_messages_path(@new_message.programme.boomerang, @programme) 

       end


private
def message_params
	  params.require(:message).
                            permit(:timelag, :message, :programme_id )
end


	
end
