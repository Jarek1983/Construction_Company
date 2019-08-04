class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.string :name
      t.text :description
      t.boolean :accept, default: false

      t.timestamps
    end
  end
end
