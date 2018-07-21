class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def faq
  end

  def services
    @car = Car.all
  end

  def car_repair
    car = Car.find params[:car_id]
    @service = car.car_models.first
  end

  def get_car_models
    car = Car.find params[:car_id]
    @car_models = car.car_models.map(&:name)
    render :json => @car_models
  end
end
