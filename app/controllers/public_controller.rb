class PublicController < ApplicationController

  layout "public"
  before_action :confirm_logged_in

  def index

  end

  def show
  end
end
