class CreateTaskTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :body, null: false
      t.integer :list_id
      t.index :list_id
      t.boolean :completed, default: false
    end
  end
end
