require 'rails_helper'

RSpec.describe Movie, type: :model do
  context "with valid attributes" do
    let(:movie) { build :movie }

    it "is valid" do
      # assert movie.valid?
      expect(movie).to be_valid
    end
  end

  context "with missing title" do
    let(:movie) { build :movie, title: nil }

    it "is not valid" do
      expect(movie).to_not be_valid
    end
  end
end
