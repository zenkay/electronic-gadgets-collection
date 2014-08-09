class GadgetsController < ApplicationController
  before_action :authenticate_user!
  def index
    @gadgets = Gadget.where(user: current_user)
  end
end
