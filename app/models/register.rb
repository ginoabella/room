class Register < ActiveRecord::Base
  belongs_to :user

  #scope :valid_to_register, 
  #lambda { |cd| where("code = :regcode AND user_id is null" ,{:regcode => "#{cd}"}) }
  
end
