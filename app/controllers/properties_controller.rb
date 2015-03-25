class PropertiesController < ApplicationController
  def new
    @properties = Property.all
    @property = Property.new
  end

  def create
    @property = current_user.properties.new(property_params)
    if @property.save
      flash[:notice] = "Property successfully added!"
      redirect_to property_path(@property)
    else
      flash[:alert] = "There was a problem saving your property"
      redirect_to new_property_path
    end
  end

  def show

  end

private
  def property_params
    params.require(:property).permit(:name, :description, :price)
  end
end
