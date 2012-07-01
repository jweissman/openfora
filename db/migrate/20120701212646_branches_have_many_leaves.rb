class BranchesHaveManyLeaves < ActiveRecord::Migration
  def up
  	# add_column :models, :field, :type
  	add_column :leaves, :branch_id, :integer
  end

  def down
  	# remove_colums
  	remove_column :leaves, :branch_id
  end
end
