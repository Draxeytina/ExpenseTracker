class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :settlements, dependent: :destroy

  validates :name, presence: true
end
