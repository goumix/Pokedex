class DressersController < ApplicationController
  def index
    @dressers = Dresser.all
  end

  def show
    @dresser = Dresser.find(params[:id])
  end
end
