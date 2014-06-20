class BoxesController < ApplicationController

  def index
    @box = Box.new
    @boxes = Box.all
  end

  def create
    @box = Box.new(box_params)
    if @box.save

      redirect_to boxes_path
    else
      render :index
    end
  end

  def show
    @box = Box.find(params[:id])
  end

  def edit
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])
    @box.update_attributes!(box_params)

    redirect_to boxes_path
  end

  def destroy
    @box = Box.find(params[:id]).delete

    redirect_to boxes_path
  end

  private
  def box_params
    params.require(:box).permit(:size, :color)
  end

end