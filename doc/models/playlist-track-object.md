
# Playlist Track Object

## Structure

`PlaylistTrackObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `added_at` | `DateTime` | Optional | The date and time the track or episode was added. _**Note**: some very old playlists may return `null` in this field._ |
| `added_by` | [`PlaylistUserObject`](../../doc/models/playlist-user-object.md) | Optional | The Spotify user who added the track or episode. _**Note**: some very old playlists may return `null` in this field._ |
| `is_local` | `TrueClass \| FalseClass` | Optional | Whether this track or episode is a [local file](/documentation/web-api/concepts/playlists/#local-files) or not. |
| `track` | `Object` | Optional | Information about the track or episode. |

## Example (as JSON)

```json
{
  "added_at": "2016-03-13T12:52:32.123Z",
  "added_by": {
    "external_urls": {
      "spotify": "spotify6"
    },
    "followers": {
      "href": "href0",
      "total": 82
    },
    "href": "href6",
    "id": "id4",
    "type": "user"
  },
  "is_local": false,
  "track": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

