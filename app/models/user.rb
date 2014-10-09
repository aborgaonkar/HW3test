class User < ActiveRecord::Base
attr_accessible :user_id,:email,:session_token

def User::create_user!(vari={})
	vari[:session_token]=SecureRandom.base64
	@user=User.create!(vari)
	return @user
end




end
