
# Simplified Artist Object

## Structure

`SimplifiedArtistObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `external_urls` | [`ExternalUrlObject`](../../doc/models/external-url-object.md) | Optional | Known external URLs for this artist. |
| `href` | `String` | Optional | A link to the Web API endpoint providing full details of the artist. |
| `id` | `String` | Optional | The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the artist. |
| `name` | `String` | Optional | The name of the artist. |
| `type` | [`TypeEnum`](../../doc/models/type-enum.md) | Optional | The object type. |
| `uri` | `String` | Optional | The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the artist. |

## Example (as JSON)

```json
{
  "external_urls": {
    "spotify": "spotify6"
  },
  "href": "href6",
  "id": "id4",
  "name": "name4",
  "type": "artist"
}
```

