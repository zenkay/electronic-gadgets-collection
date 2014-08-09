class GadgetsController < ApplicationController
  before_action :authenticate_user!
  def index
    @gadgets = Gadget.where(user: current_user)
  end

  def new
    @gadget = Gadget.new
  end

  def create
    Gadget.create(gadget_params)
    redirect_to :index
  end
end
