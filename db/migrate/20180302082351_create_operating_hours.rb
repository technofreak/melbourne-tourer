class CreateOperatingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :operating_hours do |t|
      t.string :day, limit: 20
      t.time :start_time
      t.time :end_time
      t.references :place, index: true

      t.timestamps
    end
  end
end
