class FreeCupon < ApplicationRecord
  validates :compony, presence: true, uniqueness: true
  validates :serial_number, presence: true, uniqueness: true
  belongs_to :user
  has_many :comments
  
  def display_username
    if user.nil?
      "未知"
    else
      user.account
    end
  end
end
