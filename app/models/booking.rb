class Booking < ActiveRecord::Base
  belongs_to :lawn
  attr_accessible :lawn_id, :time_start, :time_end
end
