class Query < ApplicationRecord
  belongs_to :request
  belongs_to :person
  belongs_to :department
  has_many :position_queries
end
