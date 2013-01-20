class Registration < ActiveRecord::Base
  attr_accessible :note

  belongs_to :user
  belongs_to :event
end
