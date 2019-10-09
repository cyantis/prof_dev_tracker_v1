class LocationsController < ApplicationController
  before_action :require_login

  def index
    @locations = Location.all
  end

end
