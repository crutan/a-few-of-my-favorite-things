class List < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :things, through: :list_things
  has_many :list_things
end
