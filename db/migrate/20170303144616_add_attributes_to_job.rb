class AddAttributesToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_responsability, :text
    add_column :jobs, :job_requirement, :text
    add_column :jobs, :deadline, :date
  end
end
