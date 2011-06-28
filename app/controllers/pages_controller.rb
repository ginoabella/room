class PagesController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html
  
  def home
  	@title = 'My Webconference Rooms'
    @servers = BigbluebuttonServer.all
    @rooms = BigbluebuttonRoom.where(:owner_type => "User", :owner_id => current_user.id)
  	respond_with @servers, @rooms
  end  

  def about
    @title = 'About us'
  end
  
  def contact
    @title = 'Contact us'
  end
  
  def help
    @title = 'Help'
  end
  
end
