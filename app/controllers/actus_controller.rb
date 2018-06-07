class ActusController < ApplicationController
before_action :set_actu, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:name].blank?
    @actus = Actu.all 
  #   elsif 
  #     @actus = Actu.select do |id, actu|
  #     actu[:title] == params[:name]
  # #   end
  # else
  #   @actus= "Not found"
  #   end  
  end

  def show
  end

  def log
  end

  def check
      if actu_params[:pwd]== "NEN9PxeYR4uWzvA6B5mC"
        redirect_to edit_actu_path
      else
        flash[:alert] = "Mauvais Mot de passe"
        render :show
      end
  end

  def new
    @actu = Actu.new
  end

  def create
    @actu = Actu.new(actu_params)
    if actu_params[:pwd]== "NEN9PxeYR4uWzvA6B5mC"
      if @actu.save 
        redirect_to actu_path(@actu)
      else
         render :new
      end
       else
          flash[:alert] = "Mauvais Mot de passe"
          render :new
    end
  end

  def edit
  end

  def update
    if actu_params[:pwd]== "NEN9PxeYR4uWzvA6B5mC"
      if @actu.update(actu_params)
      flash[:notice] = "Félicitations ! "
      render :show
      else
         render :edit
      end
    else
      flash[:alert] = "Mauvais Mot de passe"
      render :edit
    end
  end   
      # redirect_to actus_path
     # redirect_to actu_path(@actu)
  
  def dele   
  end
  def destroy 
  if actu_params[:pwd]== "NEN9PxeYR4uWzvA6B5mC"  
    @actu.destroy

    redirect_to actus_path  
  else      
    flash[:alert] = "Mauvais Mot de passe"
    render :edit
  end
  end


  private 

  def actu_params
    # *Strong params* : whitelisting of what can be updated by the actu
    params.require(:actu).permit(:title, :content, :pwd, :image)
  end
  def set_actu
    @actu = Actu.find(params[:id])
  end

  def pass
    mp = "NEN9PxeYR4uWzvA6B5mC"
  end

end

























































# class ActusController < ApplicationController
# before_action :set_actu, only: [:show, :edit, :update, :destroy]

#   def index
#     # if params[:name].blank?
#     @actus = Actu.all 
#   #   elsif 
#   #     @actus = Actu.select do |id, actu|
#   #     actu[:title] == params[:name]
#   # #   end
#   # else
#   #   @actus= "Not found"
#   #   end  
#   end

#   def show 
#     # if actu_params[:pwd] ==  @mp
#     # raise
#     #   redirect_to edit_actu_path
#     # raise
#     # else
#     #   raise
#     #   render :show
#     # end    
#   end

#   # def log
#   #   @actu = actu_params
#   # end

#   # def check
#   #   if actu_params[:pwd]== @mp
#   #     redirect_to edit_actu_path
#   #   else
#   #     render :show
#   #   end
#   # end

#   def new
#     @actu = Actu.new
#   end

#   def create
#     @actu = Actu.new(actu_params)
#     if actu_params[:pwd]== @mp
#       if @actu.save 
#         redirect_to actu_path(@actu)
#       else
#          render :new
#       end
#        else
#          render :new
#     end
#   end

#   def edit
#   end

#   def update
#     if actu_params[:pwd]== @mp
#       if @actu.update(actu_params)
#         render :edit
#       else
#         render :edit
#       end
#     else
#       flash[:notice] = "Post successfully created"
#       render :edit
#     end
#   end
#       # redirect_to actus_path
#      # redirect_to actu_path(@actu)
  

#   def destroy   
#     @actu.destroy

#     redirect_to actus_path  
#   end

#   private 

#   def actu_params
#     # *Strong params* : whitelisting of what can be updated by the actu
#     params.require(:actu).permit(:title, :content, :pwd)
#   end
#   def set_actu
#     @actu = Actu.find(params[:id])
#   end

#   def pass
#     @mp ==  @mp
#   end
# end