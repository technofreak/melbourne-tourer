class PlusCode < ApplicationRecord
  belongs_to :place, class_name: 'Place'
end
