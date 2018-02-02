class Department < ApplicationRecord
	has_many :people
	has_many :queries
	has_many :rooms
end
