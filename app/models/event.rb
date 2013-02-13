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
  # searchable do
  # text :title, :boost =>2
  # text :category, :boost =>5
  # text :description
  # text :locality
  # text :country
  # end

  attr_accessible :title, :date, :description, :contact_phone,  :address, :country, 
  :latitude, :longitude, :url, :locality, :photo, :category, :event_id, :photo_file_name
  belongs_to :user
  has_many :rsvps
  has_many :attendees, :through => :rsvps, :source => :user
  has_and_belongs_to_many :categories
  has_attached_file :photo


  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50}
  #validates :date, presence: true
  validates :description, presence: true, length: { maximum: 140}
  #validates :address, presence: true, length: { maximum: 150}
  validates :country, presence: true, length: { maximum: 50}
  validates :latitude, presence: true 
  validates :longitude, presence: true
  #validates :url, presence: true

  default_scope order: 'events.created_at DESC'
  
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id", 
          user_id: user.id)
  end
  

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
