# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  category   :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :category, :location, :title, :date
  belongs_to :user
  has_many :event_users, foreign_key: "attendee_id", dependent: :destroy


  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50}
  validates :category, presence: true, length: { maximum: 50}
  validates :location, presence: true, length: { maximum: 50}

	def attending?(event)
    event_users.find_by_host_id(event.id)
  end

  def attend!
    event_users.create!(host_id: event.id)
  end

  def cancel!(event)
    event_users.find_by_host_id(event.id).destroy
  end


  default_scope order: 'events.created_at DESC'
end
