class User < ActiveRecord::Base
  
  before_save :username_with_email
  
  def username_with_email
    self.username  =  self.email.sub(/\@.*/," ") 
  end
end