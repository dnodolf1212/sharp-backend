class Api::V1::KnivesController < ApplicationController

  before_action :set_owner

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
    if @knife.save!
      #@knife.featured_image.purge
      #@knife.featured_image.attach(params[:knife][:featured_image])
      render json: @knife, methods: :image_url
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
  end

  def destroy 
    set_knife
    @knife.destroy
  end

  private 

    def set_owner
      @owner = Owner.find_by_id(params[:owner_id])
    end
      
    def knife_params
      params.permit(:featured_image, :category, :brand, :price, :description, :for_sale, :likes, :owner_id)
    end

end
 
 #def set_knife
  #  @knife = Knife.find_by_id(params[:owner_id])
  #end