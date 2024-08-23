# Shows

```ruby
shows_controller = client.shows
```

## Class Name

`ShowsController`

## Methods

* [Get-a-Show](../../doc/controllers/shows.md#get-a-show)
* [Get-Multiple-Shows](../../doc/controllers/shows.md#get-multiple-shows)
* [Get-a-Shows-Episodes](../../doc/controllers/shows.md#get-a-shows-episodes)
* [Get-Users-Saved-Shows](../../doc/controllers/shows.md#get-users-saved-shows)
* [Save-Shows-User](../../doc/controllers/shows.md#save-shows-user)
* [Remove-Shows-User](../../doc/controllers/shows.md#remove-shows-user)
* [Check-Users-Saved-Shows](../../doc/controllers/shows.md#check-users-saved-shows)


# Get-a-Show

Get Spotify catalog information for a single show identified by its
unique Spotify ID.

```ruby
def get_a_show(id,
               market: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `market` | `String` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-read-playback-position`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ShowObject`](../../doc/models/show-object.md).

## Example Usage

```ruby
id = '38bS44xjbVVZ3No3ByF1dJ'

market = 'ES'

result = shows_controller.get_a_show(
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


# Get-Multiple-Shows

Get Spotify catalog information for several shows based on their Spotify IDs.

```ruby
def get_multiple_shows(ids,
                       market: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `market` | `String` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManySimplifiedShows`](../../doc/models/many-simplified-shows.md).

## Example Usage

```ruby
ids = '5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ'

market = 'ES'

result = shows_controller.get_multiple_shows(
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


# Get-a-Shows-Episodes

Get Spotify catalog information about an show’s episodes. Optional parameters can be used to limit the number of episodes returned.

```ruby
def get_a_shows_episodes(id,
                         market: nil,
                         limit: 20,
                         offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `market` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-read-playback-position`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingSimplifiedEpisodeObject`](../../doc/models/paging-simplified-episode-object.md).

## Example Usage

```ruby
id = '38bS44xjbVVZ3No3ByF1dJ'

market = 'ES'

limit = 10

offset = 5

result = shows_controller.get_a_shows_episodes(
  id,
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


# Get-Users-Saved-Shows

Get a list of shows saved in the current Spotify user's library. Optional parameters can be used to limit the number of shows returned.

```ruby
def get_users_saved_shows(limit: 20,
                          offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Requires scope

### oauth_2_0

`user-library-read`

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingSavedShowObject`](../../doc/models/paging-saved-show-object.md).

## Example Usage

```ruby
limit = 10

offset = 5

result = shows_controller.get_users_saved_shows(
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


# Save-Shows-User

Save one or more shows to current Spotify user's library.

```ruby
def save_shows_user(ids,
                    body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `body` | [`MeShowsRequest`](../../doc/models/me-shows-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-library-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
ids = '5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ'

result = shows_controller.save_shows_user(ids)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Remove-Shows-User

Delete one or more shows from current Spotify user's library.

```ruby
def remove_shows_user(ids,
                      market: nil,
                      body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |
| `market` | `String` | Query, Optional | - |
| `body` | [`MeShowsRequest`](../../doc/models/me-shows-request.md) | Body, Optional | - |

## Requires scope

### oauth_2_0

`user-library-modify`

## Response Type

This method returns a `\ApiResponse` instance.

## Example Usage

```ruby
ids = '5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ'

market = 'ES'

result = shows_controller.remove_shows_user(
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


# Check-Users-Saved-Shows

Check if one or more shows is already saved in the current Spotify user's library.

```ruby
def check_users_saved_shows(ids)
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
ids = '5CfCWKI5pZ28U0uOzXkDHe,5as3aKmN2k11yfDDDSrvaZ'

result = shows_controller.check_users_saved_shows(ids)
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

