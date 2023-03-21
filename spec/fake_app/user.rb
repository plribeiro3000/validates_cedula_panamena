# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :identity, :id, :name

  validates :identity, panamanian_identity: true
  validates :id, panamanian_identity: true
end
