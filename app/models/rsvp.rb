class Rsvp < ActiveRecord::Base
  attr_accessible :event_id, :note, :user_id
  belongs_to :user
  belongs_to :event
end
