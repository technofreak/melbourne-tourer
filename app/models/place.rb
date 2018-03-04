class Place < ApplicationRecord

  belongs_to :category, :class_name => 'Category', optional: true
  has_one :plus_code, :class_name => 'PlusCode'
  has_many :operating_hours, :class_name => 'OperatingHour'
  has_many :best_visiting_time, :class_name => 'BestVisitingTime'
  has_many :notes, :class_name => 'Note'
  has_many :how_to_reach_pvt, :class_name => "RouteByPublicTransport"

  def method_missing(meth, *args, &block)
    if Category.all.include? meth
      return Place.join(:categories).where("categories.name = ?", meth)
    else
      super
    end
  end

  def respond_to_missing?(meth, include_private = false)
    Category.all.include?(meth) || super
end
