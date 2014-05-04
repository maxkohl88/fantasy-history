class League < ActiveRecord::Base
  has_many :histories
  belongs_to :sport
  validates :name, presence: true, 
                   length: { minimum: 5 }
end
