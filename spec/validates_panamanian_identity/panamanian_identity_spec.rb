# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesPanamanianIdentity::PanamanianIdentity do
  it 'accepts 10-1-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('10-1-123')).to be_valid
  end

  it 'accepts 10-111111-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('10-111111-123')).to be_valid
  end

  it 'accepts 1-234-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('1-234-123')).to be_valid
  end

  it 'rejects 9-234-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('9-234-123')).to be_valid
  end

  it 'rejects PE-23-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('PE-23-123')).to be_valid
  end

  it 'rejects N-42-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('N-42-123')).to be_valid
  end

  it 'rejects NB-234-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('NB-234-123')).to be_valid
  end

  it 'rejects 10-0123-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('10-0123-123')).not_to be_valid
  end

  it 'rejects 90-234-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('90-234-123')).not_to be_valid
  end

  it 'rejects AA-123-123' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('AA-123-123')).not_to be_valid
  end

  it 'rejects 1-1' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('1-1')).not_to be_valid
  end

  it 'rejects 0-12-12' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('0-12-12')).not_to be_valid
  end

  it 'rejects 1-0-1' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('1-0-1')).not_to be_valid
  end

  it 'rejects 1-0' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('1-0')).not_to be_valid
  end

  it 'rejects A' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('A')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(ValidatesPanamanianIdentity::PanamanianIdentity.new(nil)).to be_valid
  end
end
