class Branch < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :leaves
end
