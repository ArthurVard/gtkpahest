class Asset < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :rooms, through: :items
  validates_presence_of :name, :amount

  def items_in_use_count
  	#items.map{|a| a.qanak}.sum
  	  self.amount - items.map{|a|if a.asset_id == self.id then a.qanak else 0 end}.sum
  end
end
