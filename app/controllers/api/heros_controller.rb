class Api::HerosController < ApplicationController
  before_action :set_hero, only: [:show]

  def index
    @heroes = Hero.all
  end

  def show
  end

  private
    def set_hero
      @hero = Hero.find(params[:id])
    end
end
