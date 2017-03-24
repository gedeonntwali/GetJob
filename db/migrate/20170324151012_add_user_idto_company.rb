class AddUserIdtoCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :user_id, :integer
    remove_column :applications, :user_id, :integer
  end
end
