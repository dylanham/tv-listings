class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update]
  
  def show
  end

  def new
    @show = Show.new
  end

  def create
    show = Show.new(show_params)
    show.save
    flash[:notice] = "#{show.name} Successfully Added"
    redirect_to show_path(show)
  end

  def edit
  end

  def update
    @show.update(show_params)
    flash[:notice] = "#{@show.name} Successfully Updated"
    redirect_to show_path(@show)
  end

  private

  def set_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:name)
  end
end
