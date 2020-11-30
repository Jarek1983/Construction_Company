class ChangeMessage < ActiveRecord::Migration[5.2]
  def change
  	rename_column :messages, :mail, :email
  end
end
