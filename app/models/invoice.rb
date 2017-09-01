class Invoice < ApplicationRecord
  has_many :lines
  accepts_nested_attributes_for :lines, :reject_if => lambda { |a| a[:description].blank? || a[:price].blank? }, :allow_destroy => true
end
