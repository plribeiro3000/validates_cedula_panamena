# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_panamanian_identity(attr = :identity)
        RequireAValidPanamanianIdentityMatcher.new(attr)
      end

      class RequireAValidPanamanianIdentityMatcher < ValidationMatcher
        def description
          'requires a valid Panamanian Identity'
        end

        def failure_message
          'does not require a valid Panamanian Identity'
        end

        def matches?(subject)
          super(subject)

          allows_value_of('PE-23-123') && allows_value_of('10-1-123') && disallows_value_of('90-234-123') && disallows_value_of('10-0123-123')
        end
      end
    end
  end
end
