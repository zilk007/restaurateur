class ViewsController < ApplicationController
  before_action :set_view, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @views = View.all
    respond_with(@views)
  end

  def show
    respond_with(@view)
  end

  def new
    @view = View.new
    respond_with(@view)
  end

  def edit
  end

  def create
    @view = View.new(view_params)
    @view.save
    respond_with(@view)
  end

  def update
    @view.update(view_params)
    respond_with(@view)
  end

  def destroy
    @view.destroy
    respond_with(@view)
  end

  private
    def set_view
      @view = View.find(params[:id])
    end

    def view_params
      params[:view]
    end
end
