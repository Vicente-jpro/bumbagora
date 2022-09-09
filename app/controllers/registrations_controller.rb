class RegistrationsController < Devise::RegistrationsController
  def new
  	super
  end

    # PATCH/PUT /users/1 or /users/1.json
  def update
      
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to jobs_url, notice: "Usuários actualizado com sucesso." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
     
  end

# POST /users or /users.json
  def create

    @user = User.new(user_params)

    respond_to do |format|
      if @user.save!
        format.html { redirect_to jobs_url, notice: "Você receberá um e-mail com instruções sobre como confirmar seu endereço de e-mail em alguns minutos." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
   def user_params
    @user = User.find_by(id: params[:id])
   end

	 def user_params
		params.require(:user)
          .permit(
            :username, 
            :type_subscription, 
            :country_id,
            :category_id, 
            :localization_description, 
            :image, 
            :document, 
            :email,
            :password,
            :password_confirmation)
	 end

end


          