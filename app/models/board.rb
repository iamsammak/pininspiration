class Board < ActiveRecord::Base
  validates :title, :user, presence: true
  belongs_to :user
  has_many :pins, dependent: :destroy, inverse_of: :board
end
