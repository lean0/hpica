class ActusController < ApplicationController
before_action :set_actu, only: [:show, :edit, :update, :destroy]

  def index
    @actus = Actu.all
  end

  def show
  end

  def new
    @actu = Actu.new
  end

  def create
    @actu = Actu.new(actu_params)
    if @actu.save
      redirect_to actus_path
    # redirect_to actu_path(@actu)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @actu.update(actu_params)
    redirect_to actus_path
    # redirect_to actu_path(@actu)
  end

  def destroy    
    @actu.destroy
    redirect_to actus_path
  end

  private 

  def actu_params
    # *Strong params* : whitelisting of what can be updated by the user
    params.require(:actu).permit(:title, :content)
  end
  def set_actu
    @actu = Actu.find(params[:id])
  end
end
