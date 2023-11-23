class PagesController < ApplicationController
  def map
    @furries = Furry.all
    @markers = @furries.geocoded.map do |furry|
      {
        lat: furry.latitude,
        lng: furry.longitude
      }
    end
  end
end
