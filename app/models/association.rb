class Association < ActiveRecord::Base
  attr_accessible :descriptif, :nom, :president_id
  has_many :events
end
