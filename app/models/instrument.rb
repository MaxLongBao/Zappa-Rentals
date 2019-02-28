class Instrument < ApplicationRecord
  belongs_to :user
  attr_reader :category
end
