class CreatePlusCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :plus_codes do |t|
      t.string :code, limit: 20
      t.string :lon, limit: 20
      t.string :lat, limit: 20

      t.timestamps
    end
  end
end
