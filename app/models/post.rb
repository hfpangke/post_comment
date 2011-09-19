class Post < ActiveRecord::Base
  has_many :comment
  validates :title,:author,:description, :presence => true
end
