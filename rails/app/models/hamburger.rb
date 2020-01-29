class Hamburger < ActiveRecord::Base
  validates :airport_id, presence: true
  validates :name, presence: true
  belongs_to :airport
end
