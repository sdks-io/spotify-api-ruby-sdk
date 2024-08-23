# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # This field describes the relationship between the artist and the album.
  class AlbumGroupEnum
    ALBUM_GROUP_ENUM = [
      # TODO: Write general description for ALBUM
      ALBUM = 'album'.freeze,

      # TODO: Write general description for SINGLE
      SINGLE = 'single'.freeze,

      # TODO: Write general description for COMPILATION
      COMPILATION = 'compilation'.freeze,

      # TODO: Write general description for APPEARS_ON
      APPEARS_ON = 'appears_on'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ALBUM_GROUP_ENUM.include?(value)
    end
  end
end
