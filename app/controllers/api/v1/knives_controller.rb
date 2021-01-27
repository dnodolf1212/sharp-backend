class Api::V1::KnivesController < ApplicationController

  def index 
    #@knives = @owner.knives for sales??? If we hava an owner filter link to index just an owners knives??
    @knives = @owner.knives.all  
    render json: @knives
  end

  def show
    set_knife
    render json: @knife
  end 
  
  def create
    @knife = @owner.knives.new(knife_params)
    if @knife.save
      render json: @knife
    else
      render json: {error: 'Error creating knife'}
    end
  end

  def edit
    set_knife
    if @knife.update 
      render json: @knife 
    else 
      render json: {error: 'Error updating knife'}
  end

  def destroy 
    set_knife
    @knife.destroy
  end

  private 
    
  def set_knife
    @knife = Knife.find_by_id(params[:owner_id])
  end

  def knife_params
    params.require(:knife).permit(:owner_id, :category, :brand, :price, :description, :for_sale, :likes)
  end

end
