class Wood < ApplicationRecord
  belongs_to :drum, optional: true
  has_many :cuts
  accepts_nested_attributes_for :cuts
end
