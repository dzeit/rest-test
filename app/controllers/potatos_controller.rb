class PotatosController < ApplicationController

  def index
    @potatos = Potato.all
  end

  def create
    @potato = Potato.create(params.require(:potato).permit(:name, :eyes))
    redirect_to potato_path(@potato)
  end

  def new
    @potato = Potato.new
  end

  def show
    @potato = Potato.find(params[:id])
  end

  def edit
    @potato = Potato.find(params[:id])
  end

  def update
  end

  def delete
  end

end
