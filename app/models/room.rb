class Room < ApplicationRecord
  belongs_to :department
  belongs_to :building
end
