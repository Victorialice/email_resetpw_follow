class User < ActiveRecord::Base
  has_secure_password
  SILENT = 0
  ACTIVE = 1

  def self.newpass( len )
	  chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
	  newpass = ""
	  1.upto(len) {
		  |i| newpass << chars[rand(chars.size-1)] }
	  return newpass
  end

end
