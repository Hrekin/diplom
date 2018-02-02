class PositionQuery < ApplicationRecord
  belongs_to :query
  belongs_to :detail_model
  has_many :material_values
end
