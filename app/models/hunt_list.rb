class HuntList < ApplicationRecord
  belongs_to :board
  belongs_to :machine
  belongs_to :state
end
