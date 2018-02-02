class RequestPerson < ApplicationRecord
  belongs_to :request
  belongs_to :person
end
