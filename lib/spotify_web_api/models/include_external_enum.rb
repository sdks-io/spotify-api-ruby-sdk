# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # If `include_external=audio` is specified it signals that the client can play
  # externally hosted audio content, and marks the content as playable in the
  # response. By default externally hosted audio content is marked as unplayable
  # in the response.
  class IncludeExternalEnum
    INCLUDE_EXTERNAL_ENUM = [
      # TODO: Write general description for AUDIO
      AUDIO = 'audio'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INCLUDE_EXTERNAL_ENUM.include?(value)
    end
  end
end
