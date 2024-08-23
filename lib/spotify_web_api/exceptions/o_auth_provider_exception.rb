# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # OAuth 2 Authorization endpoint exception.
  class OAuthProviderException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # Gets or sets error code.
    # @return [OAuthProviderErrorEnum]
    attr_accessor :error

    # Gets or sets human-readable text providing additional information on
    # error.
    # Used to assist the client developer in understanding the error that
    # occurred.
    # @return [String]
    attr_accessor :error_description

    # Gets or sets a URI identifying a human-readable web page with information
    # about the error, used to provide the client developer with additional
    # information about the error.
    # @return [String]
    attr_accessor :error_uri

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @error = hash.key?('error') ? hash['error'] : nil
      @error_description =
        hash.key?('error_description') ? hash['error_description'] : SKIP
      @error_uri = hash.key?('error_uri') ? hash['error_uri'] : SKIP
    end
  end
end
