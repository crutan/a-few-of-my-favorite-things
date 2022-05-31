class ListThing < ApplicationRecord
  belongs_to :list
  belongs_to :thing
end
