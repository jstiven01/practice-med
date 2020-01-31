require 'rails_helper'

# Test suite for the Doctor model
RSpec.describe Doctor, type: :model do
  # Association test
  # ensure Doctor model has a 1:m relationship with the Appointment model
  it { should have_many(:appointments).dependent(:destroy) }

  # ensure Doctor model has a 1:m relationship with the Doctor_specialization model
  it { should have_many(:doctor_specializations).dependent(:destroy) }

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:degree) }
  it { should validate_presence_of(:years_experience) }
  it { should validate_presence_of(:likes) }
  it { should validate_presence_of(:profile_url) }
  it { should validate_presence_of(:phone) }

end