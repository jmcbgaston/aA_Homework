class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    # TODO: your code here

    # album_track_count = self
    #   .select('albums.tracks.* COUNT(*) AS track_count')
    #   .joins(:albums)
    #   .group(:album.id)

      albums = self
        .albums
        .select('albums.* COUNT(*) AS tracks_count')
        .joins(:tracks)
        .group('album_id')

      album_count = {}
      albums.each do |album|
        album_count[album.title] = album.tracks_count
      end

      album_counts
  end
end
