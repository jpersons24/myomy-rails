class Workout < ApplicationRecord
  belongs_to :week
  belongs_to :user
  has_many :exercises, dependent: :destroy
end
