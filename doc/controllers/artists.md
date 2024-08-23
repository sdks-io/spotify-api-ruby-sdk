# Artists

```ruby
artists_controller = client.artists
```

## Class Name

`ArtistsController`

## Methods

* [Get-an-Artist](../../doc/controllers/artists.md#get-an-artist)
* [Get-Multiple-Artists](../../doc/controllers/artists.md#get-multiple-artists)
* [Get-an-Artists-Albums](../../doc/controllers/artists.md#get-an-artists-albums)
* [Get-an-Artists-Top-Tracks](../../doc/controllers/artists.md#get-an-artists-top-tracks)
* [Get-an-Artists-Related-Artists](../../doc/controllers/artists.md#get-an-artists-related-artists)


# Get-an-Artist

Get Spotify catalog information for a single artist identified by their unique Spotify ID.

```ruby
def get_an_artist(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ArtistObject`](../../doc/models/artist-object.md).

## Example Usage

```ruby
id = '0TnOYISbd1XYRBk9myaseg'

result = artists_controller.get_an_artist(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-Multiple-Artists

Get Spotify catalog information for several artists based on their Spotify IDs.

```ruby
def get_multiple_artists(ids)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ids` | `String` | Query, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyArtists`](../../doc/models/many-artists.md).

## Example Usage

```ruby
ids = '2CIMQHirSU0MQqyYHq0eOx,57dN52uHvrHOxijzpIgu3E,1vCWHaC5f2uS3yhpwWbIA6'

result = artists_controller.get_multiple_artists(ids)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |


# Get-an-Artists-Albums

Get Spotify catalog information about an artist's albums.

```ruby
def get_an_artists_albums(id,
                          include_groups: nil,
                          market: nil,
                          limit: 20,
                          offset: 0)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `include_groups` | `String` | Query, Optional | - |
| `market` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`PagingArtistDiscographyAlbumObject`](../../doc/models/paging-artist-discography-album-object.md).

## Example Usage

```ruby
id = '0TnOYISbd1XYRBk9myaseg'

include_groups = 'single,appears_on'

market = 'ES'

limit = 10

offset = 5

result = artists_controller.get_an_artists_albums(
  id,
  include_groups: include_groups,
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


# Get-an-Artists-Top-Tracks

Get Spotify catalog information about an artist's top tracks by country.

```ruby
def get_an_artists_top_tracks(id,
                              market: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `market` | `String` | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyTracks`](../../doc/models/many-tracks.md).

## Example Usage

```ruby
id = '0TnOYISbd1XYRBk9myaseg'

market = 'ES'

result = artists_controller.get_an_artists_top_tracks(
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


# Get-an-Artists-Related-Artists

Get Spotify catalog information about artists similar to a given artist. Similarity is based on analysis of the Spotify community's listening history.

```ruby
def get_an_artists_related_artists(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`ManyArtists`](../../doc/models/many-artists.md).

## Example Usage

```ruby
id = '0TnOYISbd1XYRBk9myaseg'

result = artists_controller.get_an_artists_related_artists(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Bad or expired token. This can happen if the user revoked a token or<br>the access token has expired. You should re-authenticate the user. | [`UnauthorizedException`](../../doc/models/unauthorized-exception.md) |
| 403 | Bad OAuth request (wrong consumer key, bad nonce, expired<br>timestamp...). Unfortunately, re-authenticating the user won't help here. | [`ForbiddenException`](../../doc/models/forbidden-exception.md) |
| 429 | The app has exceeded its rate limits. | [`TooManyRequestsException`](../../doc/models/too-many-requests-exception.md) |

