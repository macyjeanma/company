class FreeCupon < ApplicationRecord
  validates :compony, presence: true, uniqueness: true
  validates :serial_number, presence: true, uniqueness: true
  validates :phone
  belongs_to :user
  
  before_create :create_serial
  
  def display_username
    if user.nil?
      "未知"
    else
      user.account
    end
  end

  private
  def create_serial
    self.serial = serial_generator(10)
  end
  def serial_generator(n)
    [*'a'..'z', *'A'..'Z', *0..9].sample(10)
  end
end
