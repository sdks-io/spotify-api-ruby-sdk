# spotify_web_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SpotifyWebApi
  # Utility class for OAuth 2 authorization and token management.
  class OAuth2 < CoreLibrary::HeaderAuth
    include CoreLibrary
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'AuthorizationCodeAuth: OAuthToken is undefined or expired.'
    end

    # Initialization constructor.
    def initialize(authorization_code_auth_credentials, config)
      auth_params = {}
      @_o_auth_client_id = authorization_code_auth_credentials.o_auth_client_id unless
        authorization_code_auth_credentials.nil? || authorization_code_auth_credentials.o_auth_client_id.nil?
      @_o_auth_client_secret = authorization_code_auth_credentials.o_auth_client_secret unless
        authorization_code_auth_credentials.nil? || authorization_code_auth_credentials.o_auth_client_secret.nil?
      @_o_auth_redirect_uri = authorization_code_auth_credentials.o_auth_redirect_uri unless
        authorization_code_auth_credentials.nil? || authorization_code_auth_credentials.o_auth_redirect_uri.nil?
      @_o_auth_token = authorization_code_auth_credentials.o_auth_token unless
        authorization_code_auth_credentials.nil? || authorization_code_auth_credentials.o_auth_token.nil?
      @_o_auth_scopes = authorization_code_auth_credentials.o_auth_scopes unless
        authorization_code_auth_credentials.nil? || authorization_code_auth_credentials.o_auth_scopes.nil?
      @_config = config
      @_o_auth_api = OAuthAuthorizationController.new(config)
      auth_params['Authorization'] = "Bearer #{@_o_auth_token.access_token}" unless @_o_auth_token.nil?

      super auth_params
    end

    # Validates the oAuth token.
    # @return [Boolean] true if the token is present and not expired.
    def valid
      !@_o_auth_token.nil? && !token_expired?(@_o_auth_token)
    end

    # Builds and returns an authorization URL.
    # The user is expected to obtain an authorization code from this URL and then call the
    # fetch token function with that authorization code.
    # @param [String] state An opaque state string.
    # @param [Hash] additional_params Any additional query parameters to be added to the URL.
    # @return [String] additional_params The authorization URL.
    def get_authorization_url(state: nil, additional_params: nil)
      auth_url = @_config.get_base_uri(Server.AUTH_SERVER)
      auth_url += '/authorize'
      query_params = {
        'response_type' => 'code',
        'client_id' => @_o_auth_client_id,
        'redirect_uri' => @_o_auth_client_id
      }
      query_params['scope'] = Array(@_o_auth_scopes).compact.join(' ') if @_o_auth_scopes
      query_params['state'] = state if state
      query_params.merge!(additional_params) if additional_params
      auth_url = APIHelper.append_url_with_query_parameters(auth_url,
                                                            query_params)
      APIHelper.clean_url(auth_url)
    end

    # Builds the basic auth header for endpoints in the OAuth Authorization Controller.
    # @return [String] The value of the Authentication header.
    def build_basic_auth_header
      "Basic #{AuthHelper.get_base64_encoded_value(@_o_auth_client_id, @_o_auth_client_secret)}"
    end

    # Fetches the token.
    # @param [String] auth_code The authentication code.
    # @param [Hash] additional_params Any additional form parameters.
    # @return [OAuthToken] The oAuth token instance.
    def fetch_token(auth_code, additional_params: nil)
      token = @_o_auth_api.request_token(
        build_basic_auth_header,
        auth_code,
        @_o_auth_redirect_uri,
        _field_parameters: additional_params
      ).data
      if token.respond_to?('expires_in') && !token.expires_in.nil?
        token.expiry = AuthHelper.get_token_expiry(token.expires_in, Time.now.utc.to_i)
      end
      token
    end

    # Checks if OAuth token has expired.
    # @param [OAuthToken] token The oAuth token instance.
    # @return [Boolean] true if the token is present and not expired.
    def token_expired?(token)
      token.respond_to?('expiry') && AuthHelper.token_expired?(token.expiry)
    end

    # Refreshes OAuth token.
    # @param [Hash] additional_params Any additional form parameters.
    # @return [OAuthToken] The oAuth token instance.
    def refresh_token(additional_params: nil)
      token = @_o_auth_api.refresh_token(
        OAuth2.build_basic_auth_header,
        @_o_auth_token.refresh_token,
        scope: !@_o_auth_scopes.nil? ? Array(@_o_auth_scopes).compact.join(' ') : nil,
        _field_parameters: additional_params
      ).data
      if token.respond_to?('expires_in') && !token.expires_in.nil?
        token.expiry = AuthHelper.get_token_expiry(token.expires_in, Time.now.utc.to_i)
      end
      token
    end
  end

  # Data class for AuthorizationCodeAuthCredentials.
  class AuthorizationCodeAuthCredentials
    attr_reader :o_auth_client_id, :o_auth_client_secret, :o_auth_redirect_uri,
                :o_auth_token, :o_auth_scopes

    def initialize(o_auth_client_id:, o_auth_client_secret:,
                   o_auth_redirect_uri:, o_auth_token: nil, o_auth_scopes: nil)
      raise ArgumentError, 'o_auth_client_id cannot be nil' if o_auth_client_id.nil?
      raise ArgumentError, 'o_auth_client_secret cannot be nil' if o_auth_client_secret.nil?
      raise ArgumentError, 'o_auth_redirect_uri cannot be nil' if o_auth_redirect_uri.nil?

      @o_auth_client_id = o_auth_client_id
      @o_auth_client_secret = o_auth_client_secret
      @o_auth_redirect_uri = o_auth_redirect_uri
      @o_auth_token = o_auth_token
      @o_auth_scopes = o_auth_scopes
    end

    def clone_with(o_auth_client_id: nil, o_auth_client_secret: nil,
                   o_auth_redirect_uri: nil, o_auth_token: nil,
                   o_auth_scopes: nil)
      o_auth_client_id ||= self.o_auth_client_id
      o_auth_client_secret ||= self.o_auth_client_secret
      o_auth_redirect_uri ||= self.o_auth_redirect_uri
      o_auth_token ||= self.o_auth_token
      o_auth_scopes ||= self.o_auth_scopes

      AuthorizationCodeAuthCredentials.new(
        o_auth_client_id: o_auth_client_id,
        o_auth_client_secret: o_auth_client_secret,
        o_auth_redirect_uri: o_auth_redirect_uri, o_auth_token: o_auth_token,
        o_auth_scopes: o_auth_scopes
      )
    end
  end
end
