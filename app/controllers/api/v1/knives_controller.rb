class Api::V1::KnivesController < ApplicationController

  before_action :set_owner

  def index 
    #@knives = @owner.knives for sales??? If we hava an owner filter link to index just an owners knives??
    @knives = @owner.knives
    render json: @knives
  end

  def show
    @knife = @owner.knives.find_by_id(params[:id])
    render json: @knife
  end 
  
  def create
    binding.pry
    @knife = @owner.knives.new(knife_params)
    if @knife.save
      render json: @owner
    else
      render json: {error: 'Error creating knife'}
    end
  end

  def edit
    @knife = @owner.knives.find_by_id(params[:id])
    if @knife.update 
      render json: @knife 
    else 
      render json: {error: 'Error updating knife'}
    end
  end

  def destroy 
    @knife = @owner.knives.find_by_id(params[:id])
    @knife.destroy
  end

  private 

    def set_owner
      @owner = Owner.find_by_id(params[:owner_id])
    end
      
    def knife_params
      params.require(:knife).permit(:category, :brand, :price, :description, :for_sale, :likes, :owner_id)
    end

end
 