class Training < ApplicationRecord
  belongs_to :list
  belongs_to :training_menu
  belongs_to :user

  def part
    list.part
  end
  def item
    training_menu.item
  end
end
