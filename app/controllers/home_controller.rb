class HomeController < ApplicationController
layout "public"
before_action :confirm_logged_in

  def index
  end
end
