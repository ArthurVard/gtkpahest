class Item < ActiveRecord::Base
	belongs_to :room
	belongs_to :asset
	belongs_to :state
	belongs_to :person
	validates_presence_of :asset_id
	validates_presence_of :qanak

	def self.to_csv(room_id, options={})	
		CSV.generate(options) do |csv|
			csv << column_names
			all.where(room_id: room_id).each do |item|
				csv << item.attributes.values_at(*column_names)
			end	
		end

	end

	
	def self.column_names
  	  ['id', 'room_id', 'asset_id', 'person_id']  
  	end	
end
