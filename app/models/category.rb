# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :dishes, dependent: :destroy
end
