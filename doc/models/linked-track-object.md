
# Linked Track Object

## Structure

`LinkedTrackObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `external_urls` | [`ExternalUrlObject`](../../doc/models/external-url-object.md) | Optional | Known external URLs for this track. |
| `href` | `String` | Optional | A link to the Web API endpoint providing full details of the track. |
| `id` | `String` | Optional | The [Spotify ID](/documentation/web-api/concepts/spotify-uris-ids) for the track. |
| `type` | `String` | Optional | The object type: "track". |
| `uri` | `String` | Optional | The [Spotify URI](/documentation/web-api/concepts/spotify-uris-ids) for the track. |

## Example (as JSON)

```json
{
  "external_urls": {
    "spotify": "spotify6"
  },
  "href": "href0",
  "id": "id8",
  "type": "type2",
  "uri": "uri2"
}
```

