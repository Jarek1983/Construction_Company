class AddSlugToExecutions < ActiveRecord::Migration[5.2]
  def change
    add_column :executions, :slug, :string
    add_index :executions, :slug, unique: true
  end
end
