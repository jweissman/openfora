class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :name
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
