class Room < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :assets, through: :items
  has_many :people

  validates_presence_of :name
  validates_presence_of :number

  scope :rooms, lambda {where ("id > 1")}
  def itemcount(asset_id)
  	items.map{|a| if a.asset_id == asset_id then a.qanak else 0 end}.sum
  end
end
