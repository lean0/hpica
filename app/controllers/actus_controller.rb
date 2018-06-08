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

  def new
    @actu = Actu.new
  end

  def create
    @actu = Actu.new(actu_params)
    if actu_params[:pwd]== "20pactu18"
      if @actu.save 
        redirect_to actu_path(@actu), notice:'Actu ajouter.'
      else
         render :new
      end
       else
          render :new
    end
  end

  def edit
  end

  def update
    if actu_params[:pwd]== "20pactu18"
      if @actu.update(actu_params)
      render :show, notice:'Actu was successfully updated.'
      else
         render :edit
      end
    else

      render :edit, notice:'Wrong pwd.'
    end
  end   
      # redirect_to actus_path
     # redirect_to actu_path(@actu)
  
  def dele   
  end
  def destroy 
  if actu_params[:pwd]== "20pactu18"  
    @actu.destroy
    redirect_to actus_path, notice:'Actu was successfully deleted.'
  else 
    render :edit, notice:'Wrong pwd.'
  end
  end


#   def serve
#     send_data(@actu.data, :type => @actu.mime_type, :filename => "#{@actu.name}.jpg", :disposition => "inline")
# end


  private 

  def actu_params
    # *Strong params* : whitelisting of what can be updated by the actu
    params.require(:actu).permit(:title, :content,:pwd)
  end
  def set_actu
    @actu = Actu.find(params[:id])
  end

  def pass
    mp = "20pactu18"
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