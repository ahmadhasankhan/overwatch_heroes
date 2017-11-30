class Hero < ApplicationRecord
  validates_presence_of :name, :real_name, :external_id
  has_many :abilities
end
