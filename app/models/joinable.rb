# frozen_string_literal: true

class Joinable < ApplicationRecord
  belongs_to :user
  belongs_to :room
end
