class RegistrationsController < Devise::RegistrationsController
  def new
  	super
  end

  def update
  	super
  end

 def create
 	debugger
 end

  private

	 def user_params
		params.require(:job).permit(:username, :type_subscription, :country_id, :localization_description, :image, :document)
	 end

end


          