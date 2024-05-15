class TrainingMenu < ApplicationRecord
  has_many :trining_list
  belongs_to :list
  belongs_to :user
end
