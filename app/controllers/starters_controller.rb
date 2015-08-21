class StartersController < ApplicationController


  def index
    @starters = Starter.all
  end

  def show
    @booking = Starter.find(params[:id])
  end

  def new
    @starter = Starter.new
  end


  def edit
     @booking = Starter.find(params[:id])
  end

  def create
    @starter = Starter.new(starter_params)
    @starter.title = current_user.title
      if @starter.save
       redirect_to new_starter_path  
     end
  end


end
private
    def starter_params
      params.require(:starter).permit(:title,:special,:date)
    end
