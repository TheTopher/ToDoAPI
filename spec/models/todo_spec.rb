require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Added -cfe
  # Associate test
  # Ensure model has a 1:m relationship with the Item model
  it { should have_many( :items ).dependent( :destroy ) }

  # Added -cfe
  # Validation tests
  # ensure columns title and created_by are prsent before saving
  it { should validate_presence_of( :title ) }
  it { should validate_presence_of( :created_by ) }


  # Removed -cfe
  # pending "add some examples to (or delete) #{__FILE__}"

end
