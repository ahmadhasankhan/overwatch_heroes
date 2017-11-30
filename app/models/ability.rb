class Ability < ApplicationRecord
  validates_presence_of :name, :external_id
  belongs_to :hero
end