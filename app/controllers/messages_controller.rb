class MessagesController < ApplicationController
 before_action :set_room, only: %i[ new create destroy]
 rescue_from ActiveRecord::RecordNotFound, with: :invalid_messages


 def new
  @message = @room.messages.new 
 end

 def create
   @message = @room.messages.create!(message_params)

   open_messages(@message)

   respond_to do |format|
     format.turbo_stream
   	 format.html { redirect_to @room }
   end
 end

 private

    def invalid_messages
      logger.error "Attempt to access invalid message room: #{params[:room_id]}"
      redirect_to jobs_url, info: "Mensagem invalida."
    end

   def set_room 
     @room = Room.find(params[:room_id])
   end

   def message_params
     params.require(:message).permit(:content, :user_id)
   end

   def open_messages(message)
     user_id = 0

     # get company_id to answer messages
     if current_user.Candidato?
      user_id = message.room.user.id
     else
     # get candidate_id to answer messages
      invite = Invite.find_by_room(@message.room)
      user_id = invite.user.id
     end
       
     # answer all last messages
     Message.where(
              #Company_id
              user_id: user_id, 
              room_id: message.room.id,
              opened: false, 
            )
            .find_each do |m| 
                m.update!(opened: true) 
             end

   end

end
