class Post < ActiveRecord::Base
  include ActsAsTree

  attr_accessible :content, :name
  belongs_to :branch, :validate => true
  belongs_to :post
  
  acts_as_tree foreign_key: 'parent_id'
end
