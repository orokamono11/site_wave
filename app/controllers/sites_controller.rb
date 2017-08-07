class SitesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]
  def index
    @sites = Site.page(params[:page])
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)

    @site.save
    redirect_to @site
  end

  def edit
  end

  def update
  end
  
  def destroy

  end
  
  private
    def site_params
      params.require(:site).permit(:title, :address, :introduction, :user_id)
    end
end
