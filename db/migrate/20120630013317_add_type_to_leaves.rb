class AddTypeToLeaves < ActiveRecord::Migration

  def up
    add_column :leaves, :type, :string
  end

  def down
    remove_column :leaves, :type
  end
end
