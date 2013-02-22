class User < ActiveRecord::Base
  attr_accessible :user
  has_many :categories
  has_many :allocated_links
  has_many :unallocated_links
end
