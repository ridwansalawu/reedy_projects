class AssetsController < ApplicationController

  # @@username =  session[:username]
   @@super_users = ["reedy", "john"]
   layout "public"

   before_action :confirm_logged_in

   #reading
   def index
    search = flash[:search]
    puts "Search is #{search}"
    @assets = Asset.sorted.where("asset_code LIKE '%#{search}%'")
  end

  def index_search
    flash[:search] = params[:search]
    puts "flash search #{flash[:search]}"
    redirect_to "/assets"
  end


  def show
    @asset = Asset.find(params[:id])
  end


  #creating
  def new
    @asset = Asset.new
  end

  def create

    puts "+++++++++++About to save asset #{params[:asset]} +++++++++++++"
      
      @asset = Asset.new(asset_params)
      if @asset.save
        puts "++++++++++saved++++++++++++"
        flash[:notice] = "A new Asset has just been manufactured successfully."
        redirect_to("/")
      else
        render('new')
      end


  end

  #editing
  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    @asset = Asset.find(params[:id])
    if @asset.update_attributes(asset_params)
      redirect_to(asset_path(@asset))
    else
      render("edit")
    end
  end


  #deleting
  def delete
    @asset = Asset.find(params[:id])
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to(assets_path)
  end

  private

  def asset_params
    params.require(:asset).permit(:asset_code, :address, :pit_id, :cp_page, :status, :asset_type)
  end


end
