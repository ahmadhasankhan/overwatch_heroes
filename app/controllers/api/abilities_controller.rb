class Api::AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show]

  def index
    @abilities = Ability.all
  end

  def show
  end

  private
    def set_ability
      @ability = Ability.find(params[:id])
    end
end
