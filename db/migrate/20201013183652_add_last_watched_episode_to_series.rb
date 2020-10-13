class AddLastWatchedEpisodeToSeries < ActiveRecord::Migration[6.0]
  def change
    add_reference :series, :last_watched_episode, null: false, foreign_key: {to_table: :movies}
  end
end
