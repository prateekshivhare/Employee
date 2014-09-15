class User < ActiveRecord::Base
   belongs_to :employee
    belongs_to :department
     belongs_to :designation
#before_save EncryptionWrapper.new("password")
  #has_secure_password
 # validates_presence_of :password, :on => :create

 # attr_accessor :password
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  #validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  #validates_length_of :password, :in => 6..20, :on => :create
  #attr_accessible  :email, :password, :password_confirmation

# salt = BCrypt::Engine.generate_salt
#password = BCrypt::Engine.hash_secret(password)


# call backs
#before_save :encrypt_password
after_save :clear_password


#def encrypt_password
#  if password.present?
#    self.salt = BCrypt::Engine.generate_salt
#   self.password= password
#  end
#puts 'before save'
#end
#
#
def clear_password
  puts 'after save'
 self.password = nil
 end


def self.authenticate(email="",password="")
  if  EMAIL_REGEX.match(email)
    user = User.find_by_email(email)

  end
  if user && user.password(password)
    return user
  else
    return false
  end
end
def match_password(login_password="")
  encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
end


end


