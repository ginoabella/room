class RegistersController < ApplicationController
  respond_to :html
  
  def index
    @title = 'List Registry Codes'
    @registers = Register.all
    respond_with @registers
  end
  
  def new
    @title = 'New Sign-up Registry Code'
    @register = Register.new
    respond_with @register
  end
  
  def create
    @register = Register.new(params[:register])

    if @register.save
      flash[:notice] = "Registry Code was successfully created."
    else
      render 'new'
    end
    redirect_to registers_path
  end  
  
end
