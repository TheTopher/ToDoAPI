class Item < ApplicationRecord
  # Model associations
  belongs_to :todo

  # Validation
  validates_presence_of :name
end
