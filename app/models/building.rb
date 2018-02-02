class Building < ApplicationRecord
  	belongs_to :disposition
  	has_many :rooms
	validates :name_building, length: { minimum: 2, maximum: 256}, presence: true
	validates :disposition, presence: true

end
