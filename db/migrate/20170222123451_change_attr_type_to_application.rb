class ChangeAttrTypeToApplication < ActiveRecord::Migration[5.0]
  def change
    remove_column :applications, :user_id, :string
    remove_column :applications, :job_id, :string
  end
end
