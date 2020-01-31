class Appointment < ApplicationRecord
  belongs_to :doctor
  # validations 
  validates_presence_of :date, :time, :name_patient,
    :email_patient,  :status
  
    # validate email format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email_patient, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

  # validate allowed status
  ALLOWED_STATUS = %w[Confirmed Missed Cancelled]
  validates :status, inclusion: { in: ALLOWED_STATUS }
end
