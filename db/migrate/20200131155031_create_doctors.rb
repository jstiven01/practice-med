class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.string :degree
      t.integer :years_experience
      t.integer :likes
      t.string :profile_url
      t.integer :fee
      t.string :phone

      t.timestamps
    end
  end
end
