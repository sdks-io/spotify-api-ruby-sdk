# Player

```ruby
player_controller = client.player
```

## Class Name

`PlayerController`

## Methods

* [Get-Information-About-the-Users-Current-Playback](../../doc/controllers/player.md#get-information-about-the-users-current-playback)
* [Transfer-a-Users-Playback](../../doc/controllers/player.md#transfer-a-users-playback)
* [Get-a-Users-Available-Devices](../../doc/controllers/player.md#get-a-users-available-devices)
* [Get-the-Users-Currently-Playing-Track](../../doc/controllers/player.md#get-the-users-currently-playing-track)
* [Start-a-Users-Playback](../../doc/controllers/player.md#start-a-users-playback)
* [Pause-a-Users-Playback](../../doc/controllers/player.md#pause-a-users-playback)
* [Skip-Users-Playback-to-Next-Track](../../doc/controllers/player.md#skip-users-playback-to-next-track)
* [Skip-Users-Playback-to-Previous-Track](../../doc/controllers/player.md#skip-users-playback-to-previous-track)
* [Seek-to-Position-in-Currently-Playing-Track](../../doc/controllers/player.md#seek-to-position-in-currently-playing-track)
* [Set-Repeat-Mode-on-Users-Playback](../../doc/controllers/player.md#set-repeat-mode-on-users-playback)
* [Set-Volume-for-Users-Playback](../../doc/controllers/player.md#set-volume-for-users-playback)
* [Toggle-Shuffle-for-Users-Playback](../../doc/controllers/player.md#toggle-shuffle-for-users-playback)
* [Get-Recently-Played](../../doc/controllers/player.md#get-recently-played)
* [Get-Queue](../../doc/controllers/player.md#get-queue)
* [Add-to-Queue](../../doc/controllers/player.md#add-to-queue)


# Get-Information-About-the-Users-Current-Playback

Get information about the user’s current playback state, including track or episode, progress, and active device.

```ruby
def get_information_about_the_users_current_playback(market: nil,
                                                     additional_types: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `market` | `String` | Query, Optional | - |
| `additional_types` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-read-playback-state`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CurrentlyPlayingContextObject`](../../doc/models/currently-playing-context-object.md).

## Example Usage

```ruby
market = 'ES'

result = player_controller.get_information_about_the_users_current_playback(market: market)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Transfer-a-Users-Playback

Transfer playback to a new device and optionally begin playback. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def transfer_a_users_playback(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`MePlayerRequest`](../../doc/models/me-player-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
body = MePlayerRequest.new(
  [
    '74ASZWbe4lXaubB36ztrGX'
  ]
)

result = player_controller.transfer_a_users_playback(body: body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-a-Users-Available-Devices

Get information about a user’s available Spotify Connect devices. Some device models are not supported and will not be listed in the API response.

```ruby
def get_a_users_available_devices
```

## Requires scope

### oauth_2_0

`user-read-playback-state`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyDevices`](../../doc/models/many-devices.md).

## Example Usage

```ruby
result = player_controller.get_a_users_available_devices
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-the-Users-Currently-Playing-Track

Get the object currently being played on the user's Spotify account.

```ruby
def get_the_users_currently_playing_track(market: nil,
                                          additional_types: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `market` | `String` | Query, Optional | - |
| `additional_types` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-read-currently-playing`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CurrentlyPlayingObject`](../../doc/models/currently-playing-object.md).

## Example Usage

```ruby
market = 'ES'

result = player_controller.get_the_users_currently_playing_track(market: market)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Start-a-Users-Playback

Start a new context or resume current playback on the user's active device. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def start_a_users_playback(device_id: nil,
                           body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Query, Optional | - |
| `body` | [`MePlayerPlayRequest`](../../doc/models/me-player-play-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

body = MePlayerPlayRequest.new(
  'spotify:album:5ht7ItJgpBH7W6vJ5BqpPr',
  nil,
  { 'position' => 5 },
  0
)

result = player_controller.start_a_users_playback(
  device_id: device_id,
  body: body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Pause-a-Users-Playback

Pause playback on the user's account. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def pause_a_users_playback(device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.pause_a_users_playback(device_id: device_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Skip-Users-Playback-to-Next-Track

Skips to next track in the user’s queue. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def skip_users_playback_to_next_track(device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.skip_users_playback_to_next_track(device_id: device_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Skip-Users-Playback-to-Previous-Track

Skips to previous track in the user’s queue. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def skip_users_playback_to_previous_track(device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.skip_users_playback_to_previous_track(device_id: device_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Seek-to-Position-in-Currently-Playing-Track

Seeks to the given position in the user’s currently playing track. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def seek_to_position_in_currently_playing_track(position_ms,
                                                device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `position_ms` | `Integer` | Query, Required | - |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
position_ms = 25000

device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.seek_to_position_in_currently_playing_track(
  position_ms,
  device_id: device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Set-Repeat-Mode-on-Users-Playback

Set the repeat mode for the user's playback. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def set_repeat_mode_on_users_playback(state,
                                      device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `state` | `String` | Query, Required | - |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
state = 'context'

device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.set_repeat_mode_on_users_playback(
  state,
  device_id: device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Set-Volume-for-Users-Playback

Set the volume for the user’s current playback device. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def set_volume_for_users_playback(volume_percent,
                                  device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `volume_percent` | `Integer` | Query, Required | - |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
volume_percent = 50

device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.set_volume_for_users_playback(
  volume_percent,
  device_id: device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Toggle-Shuffle-for-Users-Playback

Toggle shuffle on or off for user’s playback. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def toggle_shuffle_for_users_playback(state,
                                      device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `state` | `TrueClass \| FalseClass` | Query, Required | - |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
state = true

device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.toggle_shuffle_for_users_playback(
  state,
  device_id: device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Recently-Played

Get tracks from the current user's recently played tracks.
_**Note**: Currently doesn't support podcast episodes._

```ruby
def get_recently_played(limit: 20,
                        after: nil,
                        before: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | - |
| `after` | `Integer` | Query, Optional | - |
| `before` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-read-recently-played`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CursorPagingPlayHistoryObject`](../../doc/models/cursor-paging-play-history-object.md).

## Example Usage

```ruby
limit = 10

after = 1484811043508

result = player_controller.get_recently_played(
  limit: limit,
  after: after
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Queue

Get the list of objects that make up the user's queue.

```ruby
def get_queue
```

## Requires scope

### oauth_2_0

`user-read-currently-playing`, `user-read-playback-state`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`QueueObject`](../../doc/models/queue-object.md).

## Example Usage

```ruby
result = player_controller.get_queue
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Add-to-Queue

Add an item to the end of the user's current playback queue. This API only works for users who have Spotify Premium. The order of execution is not guaranteed when you use this API with other Player API endpoints.

```ruby
def add_to_queue(uri,
                 device_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uri` | `String` | Query, Required | - |
| `device_id` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-modify-playback-state`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
uri = 'spotify:track:4iV5W9uYEdYUVa79Axb7Rh'

device_id = '0d1841b0976bae2a3a310dd74c0f3df354899bc8'

result = player_controller.add_to_queue(
  uri,
  device_id: device_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |

