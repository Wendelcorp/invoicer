class Line < ApplicationRecord
  belongs_to :invoice, :optional => true
end
