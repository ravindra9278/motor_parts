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
  end
end
