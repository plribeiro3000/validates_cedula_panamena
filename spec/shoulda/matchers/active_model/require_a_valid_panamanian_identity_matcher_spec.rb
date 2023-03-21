# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Shoulda::Matchers::ActiveModel::RequireAValidPanamanianIdentityMatcher do
  subject { User.new }

  it { is_expected.to require_a_valid_panamanian_identity }
  it { is_expected.to require_a_valid_panamanian_identity(:id) }
  it { is_expected.not_to require_a_valid_panamanian_identity(:name) }
end
