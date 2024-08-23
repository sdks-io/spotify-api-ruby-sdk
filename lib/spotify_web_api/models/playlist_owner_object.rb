# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # PlaylistOwnerObject Model.
  class PlaylistOwnerObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Known public external URLs for this user.
    # @return [ExternalUrlObject]
    attr_accessor :external_urls

    # Information about the followers of this user.
    # @return [FollowersObject]
    attr_accessor :followers

    # A link to the Web API endpoint for this user.
    # @return [String]
    attr_accessor :href

    # The [Spotify user ID](/documentation/web-api/concepts/spotify-uris-ids)
    # for this user.
    # @return [String]
    attr_accessor :id

    # The object type.
    # @return [Type4Enum]
    attr_accessor :type

    # The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for
    # this user.
    # @return [String]
    attr_accessor :uri

    # The name displayed on the user's profile. `null` if not available.
    # @return [String]
    attr_accessor :display_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['external_urls'] = 'external_urls'
      @_hash['followers'] = 'followers'
      @_hash['href'] = 'href'
      @_hash['id'] = 'id'
      @_hash['type'] = 'type'
      @_hash['uri'] = 'uri'
      @_hash['display_name'] = 'display_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        external_urls
        followers
        href
        id
        type
        uri
        display_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        display_name
      ]
    end

    def initialize(external_urls = SKIP, followers = SKIP, href = SKIP,
                   id = SKIP, type = SKIP, uri = SKIP, display_name = SKIP)
      @external_urls = external_urls unless external_urls == SKIP
      @followers = followers unless followers == SKIP
      @href = href unless href == SKIP
      @id = id unless id == SKIP
      @type = type unless type == SKIP
      @uri = uri unless uri == SKIP
      @display_name = display_name unless display_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      external_urls = ExternalUrlObject.from_hash(hash['external_urls']) if hash['external_urls']
      followers = FollowersObject.from_hash(hash['followers']) if hash['followers']
      href = hash.key?('href') ? hash['href'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      uri = hash.key?('uri') ? hash['uri'] : SKIP
      display_name = hash.key?('display_name') ? hash['display_name'] : SKIP

      # Create object from extracted values.
      PlaylistOwnerObject.new(external_urls,
                              followers,
                              href,
                              id,
                              type,
                              uri,
                              display_name)
    end
  end
end
