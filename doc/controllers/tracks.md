# Tracks

```ruby
tracks_controller = client.tracks
```

## Class Name

`TracksController`

## Methods

* [Get-Track](../../doc/controllers/tracks.md#get-track)
* [Get-Several-Tracks](../../doc/controllers/tracks.md#get-several-tracks)
* [Get-Users-Saved-Tracks](../../doc/controllers/tracks.md#get-users-saved-tracks)
* [Save-Tracks-User](../../doc/controllers/tracks.md#save-tracks-user)
* [Remove-Tracks-User](../../doc/controllers/tracks.md#remove-tracks-user)
* [Check-Users-Saved-Tracks](../../doc/controllers/tracks.md#check-users-saved-tracks)
* [Get-Several-Audio-Features](../../doc/controllers/tracks.md#get-several-audio-features)
* [Get-Audio-Features](../../doc/controllers/tracks.md#get-audio-features)
* [Get-Audio-Analysis](../../doc/controllers/tracks.md#get-audio-analysis)
* [Get-Recommendations](../../doc/controllers/tracks.md#get-recommendations)


# Get-Track

Get Spotify catalog information for a single track identified by its
unique Spotify ID.

```ruby
def get_track(id,
              market: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `market` | `String` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`TrackObject`](../../doc/models/track-object.md).

## Example Usage

```ruby
id = '11dFghVXANMlKmJXsNCbNl'

market = 'ES'

result = tracks_controller.get_track(
  id,
  market: market
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Several-Tracks

Get Spotify catalog information for multiple tracks based on their Spotify IDs.

```ruby
def get_several_tracks(ids,
                       market: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `market` | `String` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyTracks`](../../doc/models/many-tracks.md).

## Example Usage

```ruby
ids = '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B'

market = 'ES'

result = tracks_controller.get_several_tracks(
  ids,
  market: market
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Users-Saved-Tracks

Get a list of the songs saved in the current Spotify user's 'Your Music' library.

```ruby
def get_users_saved_tracks(market: nil,
                           limit: 20,
                           offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `market` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-library-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingSavedTrackObject`](../../doc/models/paging-saved-track-object.md).

## Example Usage

```ruby
market = 'ES'

limit = 10

offset = 5

result = tracks_controller.get_users_saved_tracks(
  market: market,
  limit: limit,
  offset: offset
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Save-Tracks-User

Save one or more tracks to the current user's 'Your Music' library.

```ruby
def save_tracks_user(ids,
                     body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `body` | [`MeTracksRequest`](../../doc/models/me-tracks-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-library-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
ids = '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B'

result = tracks_controller.save_tracks_user(ids)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Remove-Tracks-User

Remove one or more tracks from the current user's 'Your Music' library.

```ruby
def remove_tracks_user(ids,
                       body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `body` | [`MeTracksRequest1`](../../doc/models/me-tracks-request-1.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-library-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
ids = '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B'

result = tracks_controller.remove_tracks_user(ids)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Check-Users-Saved-Tracks

Check if one or more tracks is already saved in the current Spotify user's 'Your Music' library.

```ruby
def check_users_saved_tracks(ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |

## Requires scope

### oauth_2_0

`user-library-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type `Array<TrueClass | FalseClass>`.

## Example Usage

```ruby
ids = '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B'

result = tracks_controller.check_users_saved_tracks(ids)
```

## Example Response

```
[
  false,
  true
]
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Several-Audio-Features

Get audio features for multiple tracks based on their Spotify IDs.

```ruby
def get_several_audio_features(ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyAudioFeatures`](../../doc/models/many-audio-features.md).

## Example Usage

```ruby
ids = '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B'

result = tracks_controller.get_several_audio_features(ids)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Audio-Features

Get audio feature information for a single track identified by its unique
Spotify ID.

```ruby
def get_audio_features(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AudioFeaturesObject`](../../doc/models/audio-features-object.md).

## Example Usage

```ruby
id = '11dFghVXANMlKmJXsNCbNl'

result = tracks_controller.get_audio_features(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Audio-Analysis

Get a low-level audio analysis for a track in the Spotify catalog. The audio analysis describes the track’s structure and musical content, including rhythm, pitch, and timbre.

```ruby
def get_audio_analysis(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`AudioAnalysisObject`](../../doc/models/audio-analysis-object.md).

## Example Usage

```ruby
id = '11dFghVXANMlKmJXsNCbNl'

result = tracks_controller.get_audio_analysis(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Recommendations

Recommendations are generated based on the available information for a given seed entity and matched against similar artists and tracks. If there is sufficient information about the provided seeds, a list of tracks will be returned together with pool size details.

For artists and tracks that are very new or obscure there might not be enough data to generate a list of tracks.

```ruby
def get_recommendations(limit: 20,
                        market: nil,
                        seed_artists: nil,
                        seed_genres: nil,
                        seed_tracks: nil,
                        min_acousticness: nil,
                        max_acousticness: nil,
                        target_acousticness: nil,
                        min_danceability: nil,
                        max_danceability: nil,
                        target_danceability: nil,
                        min_duration_ms: nil,
                        max_duration_ms: nil,
                        target_duration_ms: nil,
                        min_energy: nil,
                        max_energy: nil,
                        target_energy: nil,
                        min_instrumentalness: nil,
                        max_instrumentalness: nil,
                        target_instrumentalness: nil,
                        min_key: nil,
                        max_key: nil,
                        target_key: nil,
                        min_liveness: nil,
                        max_liveness: nil,
                        target_liveness: nil,
                        min_loudness: nil,
                        max_loudness: nil,
                        target_loudness: nil,
                        min_mode: nil,
                        max_mode: nil,
                        target_mode: nil,
                        min_popularity: nil,
                        max_popularity: nil,
                        target_popularity: nil,
                        min_speechiness: nil,
                        max_speechiness: nil,
                        target_speechiness: nil,
                        min_tempo: nil,
                        max_tempo: nil,
                        target_tempo: nil,
                        min_time_signature: nil,
                        max_time_signature: nil,
                        target_time_signature: nil,
                        min_valence: nil,
                        max_valence: nil,
                        target_valence: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | - |
| `market` | `String` | Query, Optional | - |
| `seed_artists` | `String` | Query, Optional | - |
| `seed_genres` | `String` | Query, Optional | - |
| `seed_tracks` | `String` | Query, Optional | - |
| `min_acousticness` | `Float` | Query, Optional | - |
| `max_acousticness` | `Float` | Query, Optional | - |
| `target_acousticness` | `Float` | Query, Optional | - |
| `min_danceability` | `Float` | Query, Optional | - |
| `max_danceability` | `Float` | Query, Optional | - |
| `target_danceability` | `Float` | Query, Optional | - |
| `min_duration_ms` | `Integer` | Query, Optional | - |
| `max_duration_ms` | `Integer` | Query, Optional | - |
| `target_duration_ms` | `Integer` | Query, Optional | - |
| `min_energy` | `Float` | Query, Optional | - |
| `max_energy` | `Float` | Query, Optional | - |
| `target_energy` | `Float` | Query, Optional | - |
| `min_instrumentalness` | `Float` | Query, Optional | - |
| `max_instrumentalness` | `Float` | Query, Optional | - |
| `target_instrumentalness` | `Float` | Query, Optional | - |
| `min_key` | `Integer` | Query, Optional | - |
| `max_key` | `Integer` | Query, Optional | - |
| `target_key` | `Integer` | Query, Optional | - |
| `min_liveness` | `Float` | Query, Optional | - |
| `max_liveness` | `Float` | Query, Optional | - |
| `target_liveness` | `Float` | Query, Optional | - |
| `min_loudness` | `Float` | Query, Optional | - |
| `max_loudness` | `Float` | Query, Optional | - |
| `target_loudness` | `Float` | Query, Optional | - |
| `min_mode` | `Integer` | Query, Optional | - |
| `max_mode` | `Integer` | Query, Optional | - |
| `target_mode` | `Integer` | Query, Optional | - |
| `min_popularity` | `Integer` | Query, Optional | - |
| `max_popularity` | `Integer` | Query, Optional | - |
| `target_popularity` | `Integer` | Query, Optional | - |
| `min_speechiness` | `Float` | Query, Optional | - |
| `max_speechiness` | `Float` | Query, Optional | - |
| `target_speechiness` | `Float` | Query, Optional | - |
| `min_tempo` | `Float` | Query, Optional | - |
| `max_tempo` | `Float` | Query, Optional | - |
| `target_tempo` | `Float` | Query, Optional | - |
| `min_time_signature` | `Integer` | Query, Optional | - |
| `max_time_signature` | `Integer` | Query, Optional | - |
| `target_time_signature` | `Integer` | Query, Optional | - |
| `min_valence` | `Float` | Query, Optional | - |
| `max_valence` | `Float` | Query, Optional | - |
| `target_valence` | `Float` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`RecommendationsObject`](../../doc/models/recommendations-object.md).

## Example Usage

```ruby
limit = 10

market = 'ES'

seed_artists = '4NHQUGzhtTLFvgF5SZesLK'

seed_genres = 'classical,country'

seed_tracks = '0c6xIDDpzE81m2q797ordA'

result = tracks_controller.get_recommendations(
  limit: limit,
  market: market,
  seed_artists: seed_artists,
  seed_genres: seed_genres,
  seed_tracks: seed_tracks
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |

