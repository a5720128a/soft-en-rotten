require 'rails_helper'

RSpec.describe User, type: :model do
    subject { described_class.new }
    it "is valid with valid attributes" do
        subject.provider = "Anything"
        subject.uid = "Anything2"
        subject.name = "Anything3"
        expect(subject).to be_valid
    end

    it "is not valid without a provider" do
        expect(subject).to_not be_valid
    end

    it "is not valid without a uid" do
        subject.provider = "Anything"
        expect(subject).to_not be_valid
    end

    it "is not valid without a name" do
        subject.provider = "Anything"
        subject.uid = "Anything2"
        expect(subject).to_not be_valid
    end
end
