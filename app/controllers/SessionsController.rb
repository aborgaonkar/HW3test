class SessionsController < ApplicationController


 def new
  # default: render 'new' template
 end

 def create

   vari=params[:user]
   var=params[:user]
   userid=var[:user_id]
   emailid=var[:email]
   #@users=User.find_by_user_id(userid)
   @users=User.find_by_user_id(vari[:user_id])
   #if 1
	if vari[:email]==@users[:email]
        flash[:notice] = " Welcome #{@user.user_id}!"
	redirect_to movies_path	
   else
	   flash[:notice] = "Wrong Username/Password.Try again. "
	   
   end
 end
def destroy
end
end
