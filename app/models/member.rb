class Member < ActiveRecord::Base
  has_one :position
  belongs_to :team
end
