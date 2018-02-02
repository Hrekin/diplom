class DetailModel < ApplicationRecord
  belongs_to :category
  has_many :exemplar_details
  has_many :position_queries
end
