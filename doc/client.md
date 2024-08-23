
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `authorization_code_auth_credentials` | [`AuthorizationCodeAuthCredentials`](auth/oauth-2-authorization-code-grant.md) | The credential object for OAuth 2 Authorization Code Grant |

The API client can be initialized as follows:

```ruby
client = SpotifyWebApi::Client.new(
  authorization_code_auth_credentials: AuthorizationCodeAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_redirect_uri: 'OAuthRedirectUri',
    o_auth_scopes: [
      OAuthScopeEnum::APP_REMOTE_CONTROL,
      OAuthScopeEnum::PLAYLIST_READ_PRIVATE
    ]
  ),
  environment: Environment::PRODUCTION
)
```

API calls return an `ApiResponse` object that includes the following fields:

| Field | Description |
|  --- | --- |
| `status_code` | Status code of the HTTP response |
| `reason_phrase` | Reason phrase of the HTTP response |
| `headers` | Headers of the HTTP response as a Hash |
| `raw_body` | The body of the HTTP response as a String |
| `request` | HTTP request info |
| `errors` | Errors, if they exist |
| `data` | The deserialized body of the HTTP response |

## Spotify Web API Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| albums | Gets AlbumsController |
| artists | Gets ArtistsController |
| audiobooks | Gets AudiobooksController |
| categories | Gets CategoriesController |
| chapters | Gets ChaptersController |
| episodes | Gets EpisodesController |
| genres | Gets GenresController |
| markets | Gets MarketsController |
| player | Gets PlayerController |
| playlists | Gets PlaylistsController |
| search | Gets SearchController |
| shows | Gets ShowsController |
| tracks | Gets TracksController |
| users | Gets UsersController |
| o_auth_authorization | Gets OAuthAuthorizationController |

