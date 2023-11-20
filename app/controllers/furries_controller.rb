class FurriesController < ApplicationController
  def index
    @furries = Furrie.all
  end

  def show
  end

  def create
  end
end
