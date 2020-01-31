require 'rails_helper'

require 'rails_helper'

# Test suite for the Specialization model
RSpec.describe Specialization, type: :model do
  # Association test
  # ensure Specialization model has a 1:m relationship with the Appointment model
  it { should have_many(:doctor_specializations).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }

end