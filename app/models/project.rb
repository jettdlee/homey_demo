class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :status
  validates :name, presence: true, length: {maximum: 100}
end
