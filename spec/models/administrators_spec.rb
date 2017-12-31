require 'rails_helper'

RSpec.describe Administrators, :type => :model do
  describe '#password' do
    example '文字列を与えると、hashed_passwordは長さ60の文字列になる' do
      member = Administrators.new
      member.password = 'baukis'
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end
  end
end