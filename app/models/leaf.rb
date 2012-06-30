class Leaf < ActiveRecord::Base
  attr_accessible :description, :name
  validates_uniqueness_of :name

  # can't create raw leaf?
  validates_presence_of :type

  TYPES = { 
  	:forum => "ForumLeaf", 
  	:stack => "StackLeaf"
  }

  def describe
  	raise NotImplementedError, "Must be implemented by a subclass!"
  end
end
