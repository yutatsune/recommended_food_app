class FoodsController < ApplicationController
  def index
    @foods = Food.includes(:user)
  end

  def new
    @food = Food.new
  end

  def create
    food = current_user.foods.create!(food_params)
    redirect_to foods_path
  end

  def show
    @food = Food.find(params[:id])
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
