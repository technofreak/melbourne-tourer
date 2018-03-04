class ReferPlaceInPlusCode < ActiveRecord::Migration[5.1]
  def change
    add_reference :plus_codes, :place, index: true
  end
end
