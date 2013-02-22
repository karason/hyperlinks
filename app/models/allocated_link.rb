class AllocatedLink < ActiveRecord::Base
  attr_accessible :category_id, :link_id, :user_id
  belongs_to :category
  belongs_to :link
  belongs_to :user
end
