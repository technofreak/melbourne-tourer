class CreateRouteByPublicTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :route_by_public_transports do |t|
      t.text :description
      t.references :place, index: true

      t.timestamps
    end
  end
end
