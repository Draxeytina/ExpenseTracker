class Group < ApplicationRecord
  belongs_to :user
  has_many :settlements, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
  validates :icon,
  format: {
    with: URI.regexp(%w[http https]),
    message: 'image url is not a valid URL'
  }

  def total_amount
    total = settlements.sum(:amount)
    format('%.2f', (total * 100).round / 100.0)
  end
end
