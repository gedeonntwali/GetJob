class ChangeNameAttrJob < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :company, :string
    add_column :jobs, :company_name, :string
  end
end
