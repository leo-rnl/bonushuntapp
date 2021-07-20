class Machine < ApplicationRecord
  belongs_to :provider
  has_many :huntlists
end
