class Sleep < ApplicationRecord
  belongs_to :user
  has_many :dreams
end
