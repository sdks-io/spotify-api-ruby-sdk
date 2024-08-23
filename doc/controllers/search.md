# Search

```ruby
search_controller = client.search
```

## Class Name

`SearchController`


# Search

Get Spotify catalog information about albums, artists, playlists, tracks, shows, episodes or audiobooks
that match a keyword string. Audiobooks are only available within the US, UK, Canada, Ireland, New Zealand and Australia markets.

```ruby
def search(q,
           type,
           market: nil,
           limit: 20,
           offset: 0,
           include_external: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `q` | `String` | Query, Required | - |
| `type` | [`Array<ItemTypeEnum>`](../../doc/models/item-type-enum.md) | Query, Required | - |
| `market` | `String` | Query, Optional | - |
| `limit` | `Integer` | Query, Optional | - |
| `offset` | `Integer` | Query, Optional | - |
| `include_external` | [`IncludeExternalEnum`](../../doc/models/include-external-enum.md) | Query, Optional | - |

## Response Type

This method returns a `\ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`SearchItems`](../../doc/models/search-items.md).

## Example Usage

```ruby
q = 'remaster%20track:Doxy%20artist:Miles%20Davis'

type = [
  ItemTypeEnum::AUDIOBOOK,
  ItemTypeEnum::ALBUM,
  ItemTypeEnum::ARTIST
]

market = 'ES'

limit = 10

offset = 5

result = search_controller.search(
  q,
  type,
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

