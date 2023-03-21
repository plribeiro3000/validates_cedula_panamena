# frozen_string_literal: true

module ValidatesPanamanianIdentity
  class PanamanianIdentity
    REGEX = /\A([1-9]|10|E|N|PE|EM|KY|NT|NB)-([1-9][0-9]{0,})-([1-9][0-9]{0,})\z/i.freeze

    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @value.match(REGEX)

      Regexp.last_match(0).present?
    end
  end
end
