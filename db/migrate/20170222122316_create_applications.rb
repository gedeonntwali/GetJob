class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :user_id
      t.string :job_id
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :nationality
      t.string :phone_number
      t.string :email
      t.text :resume
      t.text :cover_letter
      t.string :highest_degree
      t.string :experience

      t.timestamps
    end
  end
end
