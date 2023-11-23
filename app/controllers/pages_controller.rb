class PagesController < ApplicationController
  def map
    @furries = Furry.all
    @markers = @furries.geocoded.map do |furry|
      {
        lat: furry.latitude,
        lng: furry.longitude,
        info_window_html: render_to_string(partial: "furries/info_window", locals: { furry: furry }),
        marker_html: render_to_string(partial: "furries/marker", locals: { furry: furry })
      }
    end
  end
end
