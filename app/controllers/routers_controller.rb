class RoutersController < ApplicationController
  def index
    @routers = Router.all
  end
 
  def show
    @router = Router.find(params[:id])
  end
 
  def new
    @router = Router.new
  end
 
  def edit
    @router = Router.find(params[:id])
  end
 
  def create
    @router = Router.new(router_params)
 
    if @router.save
      redirect_to @router
    else
      render 'new'
    end
  end
 
  def update
    @router = Router.find(params[:id])
 
    if @router.update(router_params)
      redirect_to @router
    else
      render 'edit'
    end
  end
 
  def destroy
    @router = Router.find(params[:id])
    @router.destroy
 
    redirect_to routers_path
  end
 
  private
    def router_params
      params.require(:router).permit(:address, :username, :location)
    end
end