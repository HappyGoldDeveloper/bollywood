class DirectorsController < ApplicationController
  def index
    @directors = Director.all.page params[:page]
  end

  def show
    @director = Director.find(params[:id])
  end
end
