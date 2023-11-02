class Framework < ApplicationRecord
  validates :name, :language, presence: true
end
