class Api::AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show]

  def index
    if params[:hero_id]
      @abilities =  Hero.find(params[:hero_id]).abilities
    else
      @abilities = Ability.all
    end
  end

  def show
  end

  private
    def set_ability
      @ability = Ability.find(params[:id])
    end
end
