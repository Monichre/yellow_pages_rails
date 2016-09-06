class HomeController < ApplicationController
  def index
    @businesses = Business.limit(3)
    render :index
  end

end
