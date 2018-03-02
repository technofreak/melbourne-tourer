class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :message
      t.boolean :visible
      t.references :place, index: true

      t.timestamps
    end
  end
end
