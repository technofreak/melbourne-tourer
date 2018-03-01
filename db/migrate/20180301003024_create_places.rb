class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name, limit: 50
      t.text :address
      t.string :phone_number, limit: 20
      t.string :website, limit: 200
      t.boolean :favourite
      t.boolean :archived
      t.boolean :deleted
      t.boolean :visited

      t.timestamps
    end
  end
end
