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

  def valid_filename
  	if sanitize_filename(name) 
  	then sanitize_filename(name) 
  	else  name 
  	end
  end

  protected
  def sanitize_filename(filename)
		filename.gsub(/[^0-9A-Za-z.\-]/, '_')
	end
end
