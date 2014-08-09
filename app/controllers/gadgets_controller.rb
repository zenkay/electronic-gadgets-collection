class GadgetsController < ApplicationController
  before_action :authenticate_user!
  def index
    @gadgets = Gadget.where(user: current_user)
  end

  def new
    @gadget = Gadget.new
  end

  def create
    Gadget.create(gadget_params.merge(user: current_user))
    redirect_to :root
  end

  def edit
    @gadget = Gadget.find(params[:id])
    redirect_to :root if @gadget.user != current_user
  end

  def update
    @gadget = Gadget.find(params[:id])
    redirect_to :root if @gadget.user != current_user
    @gadget.update_attributes!(gadget_params)
    redirect_to :root
  end

  def destroy
    
  end

  private

  def gadget_params
    params.require(:gadget).permit(:name, :description)
  end
end
