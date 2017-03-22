class AddAttributesToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :apply_info, :text
    add_column :applications, :addition_docs, :string
  end
end
