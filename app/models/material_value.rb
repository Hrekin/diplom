class MaterialValue < ApplicationRecord
  belongs_to :exemplar_detail
  belongs_to :position_query
end
