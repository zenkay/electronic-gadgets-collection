class ImagesController < ApplicationController
  def new
    @image = Image.new
    @gadget = params[:gadget]
  end

  def create
    redirect_to :root if Gadget.find(image_params[:gadget_id]).user != current_user
    Image.create(image_params)
    redirect_to :root
  end

  def destroy
    @image = Image.find(params[:id])
    redirect_to :root if @image.gadget.user != current_user
    @image.destroy
    redirect_to :root
  end

  private

  def image_params
    params.require(:image).permit(:gadget_id, :picture)
  end
end
