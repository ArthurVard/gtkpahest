class Item < ActiveRecord::Base
	belongs_to :room
	belongs_to :asset
	belongs_to :state
	belongs_to :person
	validates_presence_of :asset_id
	validates_presence_of :qanak
end
