require 'digest/sha2'

class User < ActiveRecord::Base
	def password=(val)
		unless val =~ /SHA2:.*/
			h = Digest::SHA2.new
			h << val
			val = "SHA2:#{h.to_s}"
		end
		write_attribute :password, val
	end
	
	def self.logon(name,password)
		h = Digest::SHA2.new
		h << password
		password = "SHA2:#{h.to_s}"
		find_by_login_and_password(name,password)
	end
end
