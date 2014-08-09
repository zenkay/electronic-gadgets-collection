class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :registerable
  has_many :gadgets
end
