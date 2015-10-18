class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  private
  def character_params
    params.require(:character).permit(:name, :class, :race)
  end
end
