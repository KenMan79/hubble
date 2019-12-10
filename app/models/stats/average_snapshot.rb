class Stats::AverageSnapshot < ApplicationRecord
  belongs_to :chainlike, polymorphic: true
  belongs_to :scopeable, polymorphic: true, required: false

  default_scope { order('timestamp DESC') }

  def average
    count > 0 ? sum / count : 0
  end
end
