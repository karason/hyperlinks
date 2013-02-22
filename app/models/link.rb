class Link < ActiveRecord::Base
  attr_accessible :alias, :link
  has_many :allocated_links
end
