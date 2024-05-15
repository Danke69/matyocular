class List < ApplicationRecord
  has_many :trainings
  has_many :training_menus
  belongs_to :user
end
