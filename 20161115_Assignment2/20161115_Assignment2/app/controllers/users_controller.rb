class UsersController < ApplicationController
 before_action :logged_in_user, only: [:edit, :update ,:index, :destroy ]#authentication
  before_action :correct_user,   only: [:edit, :update ]
  before_action :admin_user,     only: [:create_by_admin , :destroy]  #[:destroy, :edit, :update]

 def index
  @users = User.paginate(page: params[:page])
#    @users = User.all
end

def edit
    @user = User.find(params[:id])
	  end

#def quiz


def make_admin
    @user = User.find(params[:id])
	if  !@user.admin?
	@user.update_column(:admin, true)
	if  @user.admin?
          flash[:success] = "User Now admin"
		redirect_to users_url
	end
	end
	end
def remove_admin
    @user = User.find(params[:id])
	if  @user.admin?
	@user.update_column(:admin, false)
	if  !@user.admin?
          flash[:success] = "User not admin"
		redirect_to users_url
	end
	end
	end
	
def create_by_admin
    @user = User.new(user_params)
	    if @user.save
	            @user.update_attributes(confirmed: true)
	        flash[:success] = "User for #{ @user.name} created."
		        redirect_to users_path
			    else
			            render 'new'
				        end
					end
  def destroy
      User.find(params[:id]).destroy
          flash[:success] = "User deleted"
	      redirect_to users_url
	        end

		  def update
		      @user = User.find(params[:id])
	    if @user.update_attributes(user_params)
	      # Handle a successful update.
	   flash[:success] = "Profile updated"
	         redirect_to @user

	    else
	          render 'edit'
		      end
		        end
	def show
@user = User.find(params[:id])
	end
	def new
	@user = User.new
	end


	def create
@user = User.new(user_params) 
	if @user.save
	log_in @user
	flash[:success] = "Welcome to the Sample App!"
	redirect_to @user
#	redirect_to users_path
	else
	render 'new'
	end
	end

	private

	def user_params
params.require(:user).permit(:name, :email, :password,:password_confirmation)
	end
  def logged_in_user
        unless logged_in?
	        flash[:danger] = "Please log in."
		        redirect_to login_url
			      end

			      end
			  def correct_user
			        @user = User.find(params[:id])
	      redirect_to(root_url) unless @user == current_user || current_user.admin?
#	      redirect_to(root_url) unless @user == current_user.admin?
	          end

		    def admin_user
		          redirect_to(root_url) unless current_user.admin?
			      end
	end

