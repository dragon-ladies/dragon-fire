class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
	respond_to do |format|
	  if @character.save
	    format.html {redirect_to root_path, notice: "Character saved"}
      end
	end
  end
  
  private
  def character_params
    params.require(:character).permit(:name, :class_type, :race)
  end
end
