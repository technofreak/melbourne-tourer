class Category < ApplicationRecord
  has_many :places, class_name: "Place", foreign_key: "category_id"
end
