
# Artist Object

## Structure

`ArtistObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `external_urls` | [`ExternalUrlObject`](../../doc/models/external-url-object.md) | Optional | Known external URLs for this artist. |
| `followers` | [`FollowersObject`](../../doc/models/followers-object.md) | Optional | Information about the followers of the artist. |
| `genres` | `Array<String>` | Optional | A list of the genres the artist is associated with. If not yet classified, the array is empty. |
| `href` | `String` | Optional | A link to the Web API endpoint providing full details of the artist. |
| `id` | `String` | Optional | The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artist. |
| `images` | [`Array<ImageObject>`](../../doc/models/image-object.md) | Optional | Images of the artist in various sizes, widest first. |
| `name` | `String` | Optional | The name of the artist. |
| `popularity` | `Integer` | Optional | The popularity of the artist. The value will be between 0 and 100, with 100 being the most popular. The artist's popularity is calculated from the popularity of all the artist's tracks. |
| `type` | [`TypeEnum`](../../doc/models/type-enum.md) | Optional | The object type. |
| `uri` | `String` | Optional | The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the artist. |

## Example (as JSON)

```json
{
  "genres": [
    "Prog rock",
    "Grunge"
  ],
  "external_urls": {
    "spotify": "spotify6"
  },
  "followers": {
    "href": "href0",
    "total": 82
  },
  "href": "href8",
  "id": "id0"
}
```

