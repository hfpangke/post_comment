class Comment < ActiveRecord::Base
  belongs_to :post
  validates :post_id,:valuate, :presence => true
end
