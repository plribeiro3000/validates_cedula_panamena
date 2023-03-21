# frozen_string_literal: true

require 'rspec'
require 'active_model'
require 'shoulda-matchers'

RSpec.configure do |config|
  config.include Shoulda::Matchers::ActiveModel
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
