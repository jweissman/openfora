class Leaf < ActiveRecord::Base
  belongs_to :branch, :validate => true
  has_many :posts
  attr_accessible :name, :description, :type, :created_at

  # validates :name, :presence => true
  # validates :description, :presence => true
  # validates :type, :presence => true
end
