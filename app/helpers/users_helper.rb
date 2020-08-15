module UsersHelper
  
  def user_whitelist 
    params.require(:user).permit(:username, :email, :password)
  end
end
