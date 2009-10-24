class User < ActiveRecord::Base
	def self.logon(name,password)
		find_by_login_and_password(name,password)
	end
end
