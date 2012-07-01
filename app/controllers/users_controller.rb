class UsersController < ApplicationController

	before_filter :signed_in_user, only: [:edit, :update, :index, :destroy]
	before_filter :correct_user, only: [:edit, :update]
	before_filter :admin_user, only: :destroy
	def new
		@user = User.new
	end

	def index
		@users = User.paginate(page: params[:page])
	end

	
	def create
		@user = User.new(params[:user])
		if @user.save
			sign_in @user
			flash[:success] = "Bienvenue " + @user.name
			redirect_to @user
		else
			render 'new'
		end
	end
	def destroy
		@user = User.find(params[:id])
		nom = @user.name
		@user.destroy
		flash[:success] = "Suppression de #{nom} effective "
		redirect_to users_path
	end
	def show
		@user = User.find(params[:id])
	end


	def edit

	end

	def update

		if @user.update_attributes(params[:user])
			flash[:success] = "Mise a jour effective"
			sign_in @user
			redirect_to @user
		else
			render 'edit'
		end
	end

	private

	def admin_user
		redirect_to(root_path) unless current_user.admin?
	end
	
	def correct_user
		@user = User.find(params[:id])
		redirect_to root_path, notice: "Vous n'avez pas l'autorisation de faire ca." unless current_user?(@user)
	end

	def signed_in_user
		store_location

		redirect_to signin_path, notice: "Vous devez d'abord vous identifier." unless signed_in?
	end
end