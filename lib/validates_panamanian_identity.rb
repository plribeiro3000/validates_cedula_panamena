# frozen_string_literal: true

require 'active_model'
require 'validates_panamanian_identity/panamanian_identity_validator'
require 'validates_panamanian_identity/require_a_valid_panamanian_identity_matcher' if defined?(Shoulda)

module ValidatesPanamanianIdentity
  autoload :PanamanianIdentity, 'validates_panamanian_identity/panamanian_identity'
end
