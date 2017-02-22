class CreateJobCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :job_categories do |t|
      t.integer :job_id
      t.integer :category_id

      t.timestamps
    end
  end
end
