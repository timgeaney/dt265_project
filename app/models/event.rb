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
  attr_accessible :title, :date, :description, :contact_phone,  :address, :country, :latitude, :longitude, :url
  belongs_to :user
  has_many :registrations
  has_many :attendees, :through => :registrations, :source => :user
  has_and_belongs_to_many :categories
  


  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50}
  #validates :date, presence: true
  validates :description, presence: true, length: { maximum: 140}
  validates :contact_phone, presence: true
  validates :address, presence: true, length: { maximum: 50}
  validates :country, presence: true, length: { maximum: 50}
  #validates :latitude, presence: true 
  #validates :longitude, presence: true
  #validates :url, presence: true
  






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
