require 'rails_helper'

RSpec.describe List, type: :model do

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:permissions) }
  it { is_expected.to validate_length_of(:name).is_at_least(1) }

  describe "permissions" do
    let(:list) { List.new(name: 'List Name', permissions: "bogus") }

    it "validates that permissions is open, viewable or private" do
      expect(list.valid?).to eq(false)
      list.permissions = "open"
      expect(list.valid?).to eq(true)
    end
  end
end
