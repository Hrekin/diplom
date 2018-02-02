class ExemplarDetail < ApplicationRecord
  belongs_to :detail_model
  belongs_to :set_detail
  has_one :material_value
end
