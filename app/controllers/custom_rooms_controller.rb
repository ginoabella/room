class CustomRoomsController < Bigbluebutton::RoomsController
  before_filter :authenticate_user!, :except => [:invite, :auth, :running]
  #layout 'application', :except => [:join_mobile, :user_new]

  
  def user_new
    @user = current_user
    @server = BigbluebuttonServer.first
    @room = BigbluebuttonRoom.new(:server => @server,
                                  :owner_id => @user.id, :owner_type => @user.class.name,
                                  :logout_url => pages_home_url,
                                  :private => true)

  end

  def index
    redirect_to root_path
  end
end
