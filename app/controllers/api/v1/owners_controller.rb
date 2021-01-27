class Api::V1::OwnersController < ApplicationController
  
  def index 
    @owner = Owner.all
    render json: @owner
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      render json: @owner
    else
      render json: {'Error creating owner'}
    end
  end

  def show
    set_owner
    render json: @owner
  end 

  def edit
    set_owner
    if @owner.update 
      render json: @owner 
    else 
      render json: {'Error updating owner'}
  end

  def destroy 
    set_owner
    @owner.destroy
  end

  private 
    
  def set_owner
    @owner = Owner.find_by_id(params[:id])
  end

  def knife_params
    params.require(:owner).permit(:username, :location)
  end
  
end
