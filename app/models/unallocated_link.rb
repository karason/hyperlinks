class UnallocatedLink < ActiveRecord::Base
  attr_accessible :from_user_id, :link_id, :to_user_id
  belongs_to :from_user, foreign_key: 'from_user_id', class_name: 'User'
  belongs_to :link
  belongs_to :to_user, foreign_key: 'to_user_id', class_name: 'User'
end
