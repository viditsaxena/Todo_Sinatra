class User < ActiveRecord::Base
  has_many :todos
  include BCrypt
  before_create :generate_token


   def password
    Password.new( self.password_hash ) # We want to create an object so we can use the abilities later
   end

   def password=( new_password )
   self.password_hash = Password.create( new_password )
   end

   def generate_token
     self.token = SecureRandom.urlsafe_base64(nil, false)

   end


 end
