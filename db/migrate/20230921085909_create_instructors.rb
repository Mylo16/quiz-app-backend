class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :full_name
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
