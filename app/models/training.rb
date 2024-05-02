class Training < ApplicationRecord
  belongs_to :list

  def part
    list.part
  end
end
