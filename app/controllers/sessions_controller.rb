
class SessionsController < ApplicationController
	def new

	end

	def destroy
		sign_out
		redirect_to root_path
	end
	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			if current_user?(user)
				flash[:notice] = 'Vous etes deja identifie en tant que '+ user.name
				redirect_to current_user
			else
			sign_in user
			redirect_back_or user
			end
		else
			flash.now[:error] = 'Combinaison email/password invalide'
			render 'new'
		end
		
	end
end
