class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable
  has_many :gadgets
end
