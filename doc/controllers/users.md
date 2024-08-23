# Users

```ruby
users_controller = client.users
```

## Class Name

`UsersController`

## Methods

* [Get-Current-Users-Profile](../../doc/controllers/users.md#get-current-users-profile)
* [Get-Users-Profile](../../doc/controllers/users.md#get-users-profile)
* [Follow-Playlist](../../doc/controllers/users.md#follow-playlist)
* [Unfollow-Playlist](../../doc/controllers/users.md#unfollow-playlist)
* [Get-Followed](../../doc/controllers/users.md#get-followed)
* [Follow-Artists-Users](../../doc/controllers/users.md#follow-artists-users)
* [Unfollow-Artists-Users](../../doc/controllers/users.md#unfollow-artists-users)
* [Check-Current-User-Follows](../../doc/controllers/users.md#check-current-user-follows)
* [Check-If-User-Follows-Playlist](../../doc/controllers/users.md#check-if-user-follows-playlist)
* [Get-Users-Top-Artists](../../doc/controllers/users.md#get-users-top-artists)
* [Get-Users-Top-Tracks](../../doc/controllers/users.md#get-users-top-tracks)


# Get-Current-Users-Profile

Get detailed profile information about the current user (including the
current user's username).

```ruby
def get_current_users_profile
```

## Requires scope

### oauth_2_0

`user-read-email`, `user-read-private`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PrivateUserObject`](../../doc/models/private-user-object.md).

## Example Usage

```ruby
result = users_controller.get_current_users_profile
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Users-Profile

Get public profile information about a Spotify user.

```ruby
def get_users_profile(user_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_id` | `String` | Template, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PublicUserObject`](../../doc/models/public-user-object.md).

## Example Usage

```ruby
user_id = 'smedjan'

result = users_controller.get_users_profile(user_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Follow-Playlist

Add the current user as a follower of a playlist.

```ruby
def follow_playlist(playlist_id,
                    body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `playlist_id` | `String` | Template, Required | - |
| `body` | [`PlaylistsFollowersRequest`](../../doc/models/playlists-followers-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`playlist-modify-private`, `playlist-modify-public`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
playlist_id = '3cEYpjA9oz9GiPac4AsH4n'

body = PlaylistsFollowersRequest.new(
  false
)

result = users_controller.follow_playlist(
  playlist_id,
  body: body
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Unfollow-Playlist

Remove the current user as a follower of a playlist.

```ruby
def unfollow_playlist(playlist_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `playlist_id` | `String` | Template, Required | - |

## Requires scope

### oauth_2_0

`playlist-modify-private`, `playlist-modify-public`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
playlist_id = '3cEYpjA9oz9GiPac4AsH4n'

result = users_controller.unfollow_playlist(playlist_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Followed

Get the current user's followed artists.

```ruby
def get_followed(type,
                 after: nil,
                 limit: 20)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ItemType1Enum`](../../doc/models/item-type-1-enum.md) | Query, Required | - |
| `after` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-follow-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`CursorPagedArtists`](../../doc/models/cursor-paged-artists.md).

## Example Usage

```ruby
type = ItemType1Enum::ARTIST

after = '0I2XqVXqHScXjHhk6AYYRe'

limit = 10

result = users_controller.get_followed(
  type,
  after: after,
  limit: limit
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Follow-Artists-Users

Add the current user as a follower of one or more artists or other Spotify users.

```ruby
def follow_artists_users(type,
                         ids,
                         body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ItemType2Enum`](../../doc/models/item-type-2-enum.md) | Query, Required | - |
| `ids` | `String` | Query, Required | - |
| `body` | [`MeFollowingRequest`](../../doc/models/me-following-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-follow-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
type = ItemType2Enum::ARTIST

ids = '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6'

result = users_controller.follow_artists_users(
  type,
  ids
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Unfollow-Artists-Users

Remove the current user as a follower of one or more artists or other Spotify users.

```ruby
def unfollow_artists_users(type,
                           ids,
                           body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ItemType3Enum`](../../doc/models/item-type-3-enum.md) | Query, Required | - |
| `ids` | `String` | Query, Required | - |
| `body` | [`MeFollowingRequest1`](../../doc/models/me-following-request-1.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-follow-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
type = ItemType3Enum::ARTIST

ids = '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6'

result = users_controller.unfollow_artists_users(
  type,
  ids
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Check-Current-User-Follows

Check to see if the current user is following one or more artists or other Spotify users.

```ruby
def check_current_user_follows(type,
                               ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ItemType3Enum`](../../doc/models/item-type-3-enum.md) | Query, Required | - |
| `ids` | `String` | Query, Required | - |

## Requires scope

### oauth_2_0

`user-follow-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type `Array<TrueClass | FalseClass>`.

## Example Usage

```ruby
type = ItemType3Enum::ARTIST

ids = '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6'

result = users_controller.check_current_user_follows(
  type,
  ids
)
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


# Check-If-User-Follows-Playlist

Check to see if one or more Spotify users are following a specified playlist.

```ruby
def check_if_user_follows_playlist(playlist_id,
                                   ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `playlist_id` | `String` | Template, Required | - |
| `ids` | `String` | Query, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type `Array<TrueClass | FalseClass>`.

## Example Usage

```ruby
playlist_id = '3cEYpjA9oz9GiPac4AsH4n'

ids = 'jmperezperez,thelinmichael,wizzler'

result = users_controller.check_if_user_follows_playlist(
  playlist_id,
  ids
)
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


# Get-Users-Top-Artists

Get the current user's top artists based on calculated affinity.

```ruby
def get_users_top_artists(time_range: 'medium_term',
                          limit: 20,
                          offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `time_range` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-top-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingArtistObject`](../../doc/models/paging-artist-object.md).

## Example Usage

```ruby
time_range = 'medium_term'

limit = 10

offset = 5

result = users_controller.get_users_top_artists(
  time_range: time_range,
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


# Get-Users-Top-Tracks

Get the current user's top tracks based on calculated affinity.

```ruby
def get_users_top_tracks(time_range: 'medium_term',
                         limit: 20,
                         offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `time_range` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-top-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingTrackObject`](../../doc/models/paging-track-object.md).

## Example Usage

```ruby
time_range = 'medium_term'

limit = 10

offset = 5

result = users_controller.get_users_top_tracks(
  time_range: time_range,
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

