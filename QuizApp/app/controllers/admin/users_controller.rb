class Admin::UsersController < Admin::BaseController

  helper_method :sort_column, :sort_direction, :search_params

  before_filter :find_user, :only => [:edit, :update, :show, :destroy]

  def index
    @search = User.search(params[:search])
    @users = find_users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_path, :notice => "Successfully created user."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to admin_users_path, :notice => "Successfully updated user."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, :notice => "User has been deleted."
  end

  protected

  def find_user
    @user = User.find(params[:id])
  end

  def find_users
    search_relation = @search.relation
    search_relation.order(sort_column + " " + sort_direction).page params[:page]
  end

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end

  def search_params
    {:search => params[:search]}
  end

end
