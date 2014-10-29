class Person < ActiveRecord::Base
	belongs_to :position
	belongs_to :section
	belongs_to :room

	has_many :items
	validates_presence_of :room_id
	validates_presence_of :position_id
	validates_presence_of :section_id
	validates_presence_of :firstName
	validates_presence_of :lastName
	

	def full_name
    	"#{firstName} #{lastName}"
  	end
end
