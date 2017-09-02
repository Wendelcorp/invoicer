class Invoice < ApplicationRecord
  include Hashid::Rails
  has_many :lines
  belongs_to :user
  accepts_nested_attributes_for :lines, :reject_if => lambda { |a| a[:description].blank? || a[:price].blank? }, :allow_destroy => true
end
