class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy, :show2]

def check
	@lookup = params[:New]
	puts(@lookup)
	puts(@lookup2)
end

def edit
	@lookup = params[:search]
	@lol = params[:hi]
	@lol2 = params[:hi2]
	@lol3 = params[:ans]
	if(@lol3 == @lookup)	
			session[:var1]= session[:var1].to_i + 1
			flash[:success]="Correct!"
	else 
			flash[:success]="Wrong!"
		end
	@gg = session[:var1]
	puts(@lookup)
	@allow = 1
	puts(@allow)
	redirect_to request.referrer
end


#  if(params.has_key?(:random))
#	@random = Exam.find(params[:random])
#	end
  # GET /exams
  # GET /exams.json
  def index
#    @subgenre = Subgenre.find(params[:random])
#  if(params.has_key?(:random))
#	@random = params[:random]
   @exams = Exam.all
#    end
  end
  # GET /exams/1
  # GET /exams/1.json
#	qid = qid + 1
# 	  @cat = Exam.find(params[:qid])
#	  @exam = Exam.find(params[:{@cat}])
def show
     @exam = Exam.find(params[:id])
	@ok = params[:random]
	@uni = params[:uni]
	puts(@uni)
	puts(@uni)
	puts(@uni)
	puts(@uni)
	puts(@uni)
	@sc = params[:score]
	puts(@sc)
	puts(@sc)
	puts(@sc)
	puts(@sc)
	if(@uni == '365')
		session[:var1] = @sc.to_i
		end
@allow = params[:disable]
	if(@ok == 'Football')
	if(@exam.id == 27)
		render 'score'
		session[:var1]=0
		end
		end
	if(@ok == 'Cricket')
		if(@exam.id == 17)
		render 'score'
		session[:var1]=0
		end
		end
	if(@ok == 'Sci-Fi')
		if(@exam.id == 37)
		render 'score'
		session[:var1]=0
		end
		end
	if(@ok == 'Horror')
		if(@exam.id == 47)
		render 'score'
		session[:var1]=0
		end
		end
	@hi = params[:hi]

	@gg = session[:var1]
	@lookup = params[:lookup]
	puts(@lookup)
	puts(@lookup)
	puts(@lookup)
	puts(1)
	puts(1)
	puts(1)
	puts(1)
	@exam.increment(:id ,by = 1)
  end

def show2
     @exam = Exam.find(params[:id])
	@exam.increment(:id ,by = 1)
  end

  # GET /exams/new
  def new
    @exam = Exam.new
#    @subgenre = Subgenre.find(params[:random])
  end

  # GET /exams/1/edit

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(exam_params)

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
	  @exam = Exam.find(params[:id])
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to exams_url, notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
   #  @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:question, :option1, :option2, :option3, :option4, :correct_ans)
    end
end
