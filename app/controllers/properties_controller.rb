class PropertiesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @property = @user.properties.new
  end

private
  def property_params
    params.require(:property).permit(:name, :description, :price)
  end
end
