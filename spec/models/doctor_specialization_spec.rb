require 'rails_helper'

# Test suite for the Doctor_Specialization model
RSpec.describe DoctorSpecialization, type: :model do
  # Association test
  # ensure an Doctor_Specialization record belongs to a single doctor record
  it { should belong_to(:doctor) }
  it { should belong_to(:specialization) }

end