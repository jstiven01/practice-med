class Doctor < ApplicationRecord
    # validations 
    validates_presence_of :name, :degree, :years_experience,
    :likes, :profile_url, :phone

    # model association
    has_many :appointments, dependent: :destroy
    has_many :doctor_specializations, dependent: :destroy

end