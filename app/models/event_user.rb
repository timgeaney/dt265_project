class EventUser < ActiveRecord::Base
  attr_accessible :attendee_id, :host_id

  belongs_to :attendee, class_name: "User"
  belongs_to :host, class_name: "User"

  validates :attendee_id, presence: true
  validates :host_id, presence: true



end
