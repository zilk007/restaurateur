class StartersController < ApplicationController
  before_action :set_starter, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @starters = Starter.all
    respond_with(@starters)
  end

  def show
    respond_with(@starter)
  end

  def new
    @starter = Starter.new
    respond_with(@starter)
  end

  def edit
  end

  def create
    @starter = Starter.new(starter_params)
    @starter.save
    redirect_to new_path
  end

  def update
    @starter.update(starter_params)
    respond_with(@starter)
  end

  def destroy
    @starter.destroy
    respond_with(@starter)
  end

  private
    def set_starter
      @starter = Starter.find(params[:id])
    end

    def starter_params
      params.require(:starter).permit(:title,:special,:date)
    end
end
