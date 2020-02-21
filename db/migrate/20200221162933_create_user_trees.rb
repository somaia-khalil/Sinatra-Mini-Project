class CreateUserTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :user_trees do |t|
      t.integer :cost
      t.integer :age
      t.integer :user_id
      t.integer :tree_id
    end
  end
end
