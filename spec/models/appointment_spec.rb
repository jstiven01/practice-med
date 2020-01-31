require 'rails_helper'

# Test suite for the Appointment model
RSpec.describe Appointment, type: :model do
  # Association test
  # ensure an Appointment record belongs to a single doctor record
  it { should belong_to(:doctor) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:name_patient) }
  it { should validate_presence_of(:email_patient) }
  it { should validate_presence_of(:status) }

  #ensure format of email
  it { should allow_value("email@addresse.foo").for(:email_patient) }
  it { should_not allow_value("foo").for(:email_patient) }
  #ensure valid values of status
  it do
    should validate_inclusion_of(:status).
      in_array(['Confirmed', 'Missed', 'Cancelled'])
  end
end