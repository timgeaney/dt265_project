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

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
