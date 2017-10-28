class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
     flash[:success] = "preferences created!"
      origin=@micropost.origin
      
      destination=@micropost.destination
      if origin=="A+"
      @tickets=Ticket.where('category2>=?', destination )
      end
      if origin=="A-"
      @tickets=Ticket.where('category3>=?', destination )
      end
      if origin=="B+"
      @tickets=Ticket.where('category4>=?', destination )
    end
    if origin=="B-"
      @tickets=Ticket.where('category5>=?', destination )
    end
    if origin=="AB+"
      @tickets=Ticket.where('category6>=?', destination )
    end
    if origin=="AB-"
      @tickets=Ticket.where('category7>=?', destination )
    end
    if origin=="O+"
      @tickets=Ticket.where('category8>=?', destination )
    end
    if origin=="O-"
      @tickets=Ticket.where('category9>=?', destination )
        flash[:success] = @ticket.length
       @tickets.each do |ticket|
         SampleMailer.sample_mail(micropost.user).deliver
       end
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end 
  end

#def destroy
    #@micropost.destroy
   # flash[:success] = "Micropost deleted"
  #  redirect_to request.referrer || root_url
 # end

#def notification
 # user
#@notification= Ticket.where( journeydate>? OR journeydate=?,startdate, startdate ).where( journeydate<?, enddate ).where( budget>? OR budget=?, price , price ).where( from = , origin).where( destination = , destination)

#end
  def destroy
    @micropost= current_user.microposts.find(params[:id])
    if @micropost.present?
      @micropost.destroy
          flash[:success] = "preferences deleted"
    end
      redirect_to request.referrer || root_url
end

  private

    def micropost_params
       params.require(:micropost).permit(:destination, :budget,:startdate, :enddate, :content, :picture,:origin)
      end

       def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
