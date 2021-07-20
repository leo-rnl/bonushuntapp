class HuntList < ApplicationRecord
  belongs_to :board, dependent: :destroy
  belongs_to :machine
  belongs_to :state
end
