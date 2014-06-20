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

  private
  def box_params
    params.require(:box).permit(:size, :color)
  end

end