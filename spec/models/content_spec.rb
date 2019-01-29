require 'faker'
require 'rails_helper'

RSpec.describe Content, :type => :model do
  before do
    @content = Content.new(title: Faker::Lorem.sentence)
  end

  subject { @content }

  describe "when title is not present" do
    before { @content.title = " " }
    it { should_not be_valid }
  end
end