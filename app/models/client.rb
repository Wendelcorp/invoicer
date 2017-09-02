class Client < ApplicationRecord
  include Hashid::Rails
  belongs_to :user
end
