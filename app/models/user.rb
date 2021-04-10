class User < ApplicationRecord
   has_many :workouts
   has_many :weeks, through: :workouts
   has_many :foods
   has_many :meals, through: :foods

   # has_secure_password allows for:
   # string password "123" => password_digest "n37haps9uhg9q8htbas" (encrypted password)
   # allows for user.authenticate("123") => checks if password matches password that is saved into database
   has_secure_password
   validates :username, uniqueness: { case_sensitive: false }
end
