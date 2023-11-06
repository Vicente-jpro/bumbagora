class RoomsController < ApplicationController
  before_action :set_room, only: %i[ show edit update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_rooms

  include RoomConcern
  include UserConcern

  # GET /rooms or /rooms.json
  def index

    if user_is_a_company_or_admim?(current_user) 
      @rooms = Room.includes(:user, :messages)
                   .where(user_id: current_user.id)
    else
      @invites = Invite.find_invites_candidate(current_user).to_a
    end
  
  end

  # GET /rooms/1 or /rooms/1.json
  def show
    # varible @invites should be invite
    @invites = Invite.find_by_room(set_room)
    
    if current_user.Candidato? and @invites.present?
      @invites.update!(opened: true)
    end
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms or /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
         create_invite(@room, room_params[:candidate_id])
       
        format.html { redirect_to room_url(@room), notice: "Room was successfully created." }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1 or /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to room_url(@room), notice: "Room was successfully updated." }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1 or /rooms/1.json
  def destroy
    @room.destroy
   
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: "Room was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def invalid_rooms
    logger.error "Attempt to access invalid user: #{params[:id]}"
    redirect_to houses_url, info: "Usuário ou sala de conversa não encontrada."
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find_by(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:user_id, :candidate_id)
    end
end
