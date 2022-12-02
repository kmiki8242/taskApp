class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy

  validates :complete_status, inclusion: { in: [true, false] }

  with_options presence: true do
    validates :name, length: { in: 1..50 , message: " : 1~50文字で入力して下さい" }
    validates :start_date_time
  end

  validate :start_format_check

  def start_format_check
    error.add(:start_date_time, "現在より遅い日時を指定して下さい") if start_date_time < Time.now
  end
end
