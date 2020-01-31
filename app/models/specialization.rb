class Specialization < ApplicationRecord
    # validations
    validates_presence_of :name

    # Associations
    has_many :doctor_specializations, dependent: :destroy
end
