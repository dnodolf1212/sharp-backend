class Api::V1::KnivesController < ApplicationController

  before_action :set_owner, except: [:destroy]

  def index 
    if @owner
      @knives = @owner.knives
    else 
      @knives = Knife.all
    render json: @knives
    end
  end

  def show
    @knife = @owner.knives.find_by_id(params[:id])
    render json: @knife
  end 
  
  def create
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
    @knife = Knife.find_by_id(params[:owner_id])
    @owner = Owner.find_by_id(params[:id])
    @knife.destroy
    render json: @owner
  end

    def set_owner
      @owner = Owner.find_by_id(params[:owner_id])
    end
      
    def knife_params
      params.require(:knife).permit(:category, :brand, :price, :description, :for_sale, :likes, :owner_id)
    end

end
 