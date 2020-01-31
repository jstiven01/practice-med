class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.time :time
      t.string :status
      t.string :name_patient
      t.string :email_patient
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
