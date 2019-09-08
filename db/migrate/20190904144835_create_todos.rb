class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :title
      t.boolean :completed, default: false
      t.integer :project_id

      t.timestamps
    end
  end
end
