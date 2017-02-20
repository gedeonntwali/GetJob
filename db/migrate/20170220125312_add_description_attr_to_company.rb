class AddDescriptionAttrToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :description, :text
  end
end
