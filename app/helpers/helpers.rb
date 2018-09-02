class Helpers
  
  def self.current_user(session) 
    @user =User.find_by_id(session[:user_id])
  end 
  
  def is_logged_in?(session_hash)
    if @user.id == session_hash
      true 
    else 
      false 
    end 
      
  end 
  
end