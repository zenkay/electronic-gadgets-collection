class Gadget < ActiveRecord::Base
  belongs_to :user
  has_many :images
end
