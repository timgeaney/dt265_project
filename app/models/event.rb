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
  attr_accessible :category, :location, :title

  validates :title, presence: true, length: { maximum: 50}
  validates :category, presence: true, length: { maximum: 50}
  validates :location, presence: true, length: { maximum: 50}
end
