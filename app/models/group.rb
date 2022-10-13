class Group < ApplicationRecord
  belongs_to :user
  has_many :settlements, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    total = settlements.sum(:amount)
    format('%.2f', (total * 100).round / 100.0)
  end
end
