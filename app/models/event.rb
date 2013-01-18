# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  category      :string(255)
#  event_date    :datetime
#  description   :string(255)
#  contact_phone :string(255)
#  address       :string(255)
#  country       :string(255)
#  latitude      :float
#  longitude     :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :address, :category, :contact_phone, :country, :description, :event_date, :latitude, :longitude, :title

  validates :title, presence: true, length: {maximum: 50}
  validates :category, presence: true, length: {maximum: 50}
  validates :event_date, presence: true, length: {maximum: 50}






end
