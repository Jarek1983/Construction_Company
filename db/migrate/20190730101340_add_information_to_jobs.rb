class AddInformationToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :information, :text
  end
end
