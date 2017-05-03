require 'rails_helper'

# anytime you are trying to validate uniqueness of,
# shoulda matchers will look into your database and duplicate something to test,
# so you need something in your datebase for it to copy

RSpec.describe User, type: :model do
  User.create!(username: "Sam", password: "password")

  it { should validate_presence_of(:username) }
  it { should validate_length_of(:password).is_at_least(6) }
  it { should validate_uniqueness_of(:username) }

# doesn't work
  let(:incomplete_user) { User.new(username: "Jeremy") }

  it "validates presence of password" do
    expect(incomplete_user).not_to be_valid
  end
end
