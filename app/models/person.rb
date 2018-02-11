class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
  belongs_to :department
  has_many :person_roles, inverse_of: :person
  has_many :roles, through: :person_roles
  has_many :request_people
  has_many :queries
  accepts_nested_attributes_for :person_roles, allow_destroy: true
end
