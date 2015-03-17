class WellcomeController < ApplicationController
  def index
    @photos = Photo.all
  end
end