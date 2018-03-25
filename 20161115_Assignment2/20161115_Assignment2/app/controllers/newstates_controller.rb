class NewstatesController < ApplicationController
  before_action :set_newstate, only: [:show, :edit, :update, :destroy]

  # GET /newstates
  # GET /newstates.json
  def index
    @newstates = Newstate.all
  end

  # GET /newstates/1
  # GET /newstates/1.json
  def show
  end

  # GET /newstates/new
  def new

   @ok = params[:random]
     @ok2 = params[:id]

       puts(@ok)
	        puts(1)
	  puts(@ok2)
	        puts(1)
	puts(current_user)
	@newstate = Newstate.new(:quizname => @ok, :questionid => @ok2, :score => session[:var1], :userid => current_user.id)
  end

  # GET /newstates/1/edit
  def edit
  end

  # POST /newstates
  # POST /newstates.json
  def create
    @newstate = Newstate.new(newstate_params)

    respond_to do |format|
      if @newstate.save
        format.html { redirect_to @newstate, notice: 'Newstate was successfully created.' }
        format.json { render :show, status: :created, location: @newstate }
      else
        format.html { render :new }
        format.json { render json: @newstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newstates/1
  # PATCH/PUT /newstates/1.json
  def update
    respond_to do |format|
      if @newstate.update(newstate_params)
        format.html { redirect_to @newstate, notice: 'Newstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @newstate }
      else
        format.html { render :edit }
        format.json { render json: @newstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newstates/1
  # DELETE /newstates/1.json
  def destroy
    @newstate.destroy
    respond_to do |format|
      format.html { redirect_to newstates_url, notice: 'Newstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newstate
      @newstate = Newstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newstate_params
      params.require(:newstate).permit(:quizname, :questionid, :score, :userid)
    end
end
