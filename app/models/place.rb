class Place < ApplicationRecord

  belongs_to :category, :class_name => 'Category', optional: true
  belongs_to :plus_code, :class_name => 'PlusCode', optional: true
  has_many :operating_hours, :class_name => 'OperatingHour'
  has_many :best_visiting_time, :class_name => 'BestVisitingTime'
  has_many :notes, :class_name => 'Notes'
  has_many :how_to_reach_pvt, :class_name => "RouteByPublicTransport"

  def method_missing(meth, *args, &block)
    if Category.all.include? meth
      return Place.join(:categories).where("categories.name = ?", meth)
    else
      super
    end
  end
end
