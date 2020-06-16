class Drum < ApplicationRecord
  has_many :woods
  accepts_nested_attributes_for :woods
end
