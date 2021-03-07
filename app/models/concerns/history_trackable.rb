# Methods pertaining to parsing history_tracks
module HistoryTrackable
  extend ActiveSupport::Concern

  def recent_history_tracks
    versions.where(updated_at: 6.days.ago..)
  end
end
