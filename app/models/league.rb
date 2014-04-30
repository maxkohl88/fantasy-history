class League < ActiveRecord::Base
  has_many :histories
  belongs_to :sport
end
