class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  :name, :register_code
  
  validate :valid_regcode
  
  has_one :register
  
  
  # validates if registry code exist in register and userid is still nil
  def valid_regcode
    @reg = Register.find_by_code_and_user_id("#{register_code}",nil)
    errors.add_to_base("Invalid Register Code") if @reg == nil
    @reg != nil
  end
  
  def register_code=(code)
    @regcode = code
  end
  
  def register_code
    @regcode
  end
  
  def after_create
    self.register = @reg
    self.save
  end
  
end
