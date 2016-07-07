require 'rails_helper'

RSpec.describe List, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:topic) }

  it { is_expected.to validate_length_of(:title).is_at_least(5) }
  it { is_expected.to validate_length_of(:body).is_at_least(20) }

  it "validates that permissions is open, viewable or private" do
    # Step 1: Create a valid list
    # Step 2: Change permissions to something bogus
    # Step 3: User the .valid? method on list to check for validity.
  end
end
