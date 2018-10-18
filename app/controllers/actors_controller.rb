class ActorsController < ApplicationController
  def index
    @actors = Actor.all.page params[:page]
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
