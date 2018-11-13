require 'rails_helper'

RSpec.describe Movie, type: :model do
    subject { described_class.new }
    it "is valid with valid attributes" do
        subject.title = "Anything"
        subject.rating = "Anything2"
        subject.description = "Anything3"
        subject.release_date = DateTime.now
        expect(subject).to be_valid
    end

    it "is not valid without a title" do
        expect(subject).to_not be_valid
    end
=begin
    it "is not valid without a rating" do
        subject.title = "Anything"
        expect(subject).to_not be_valid
    end

    it "is not valid without a description" do
        subject.title = "Anything"
        subject.rating = "Anything2"
        expect(subject).to_not be_valid
    end

    it "is not valid without a release_date" do
        subject.title = "Anything"
        subject.rating = "Anything2"
        subject.description = "Anything3"
        expect(subject).to_not be_valid
    end
=end
end
