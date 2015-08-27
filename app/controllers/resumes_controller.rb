class ResumesController < ApplicationController


before_action :authenticate_user!
before_action :set_resume, only: [:show, :edit, :update, :destroy]
  


  respond_to :html
  
  def index
  	  @resumes = Resume.all.order("created_at DESC")
      respond_with(@resumes)
  end

        def show
          redirect_to client_path, success: @resume.avatar, success_description: @resume.description,
          success_title: @resume.title, success_date: @resume.date
        end


  def new
  	@resume = current_user.resumes.build
  end

  def edit
  end

  def create
     @resume = current_user.resumes.new(resume_params)
     @resume.title = current_user.title
     @resume.save
     redirect_to resumes_path

  end



  def update
    if @resume.update(resume_params)
      redirect_to @resume, notice: 'Resume was successfully updated.'
    else
      render action: 'edit'
    end
  end


   def create_horizontal
    @resume_horizontal = Resume.new(resume_horizontal_params)

    if @resume_horizontal.valid?
      redirect_to root_url, notice: 'User is valid'
    else
      redirect_to resumes_path
    end
  end



  def destroy
    @resume.destroy
    redirect_to resumes_path
  end
end

private

    def set_resume
      @resume = Resume.find(params[:id])
    end

  def correct_user
    @resume = current_user.resumes.find_by(id: params[:id])
    redirect_to resumes_path, notice: "Not authorized to edit this resume" if @resume.nil?
  end
  def resume_params
    params.require(:resume).permit(:title, :description, :date, :avatar)
  end




  def resume_horizontal_params
    params.require(:resume_horizontal).permit(:title, :attachment)
  end


