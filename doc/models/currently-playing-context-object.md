
# Currently Playing Context Object

## Structure

`CurrentlyPlayingContextObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `device` | [`DeviceObject`](../../doc/models/device-object.md) | Optional | The device that is currently active. |
| `repeat_state` | `String` | Optional | off, track, context |
| `shuffle_state` | `TrueClass \| FalseClass` | Optional | If shuffle is on or off. |
| `context` | [`ContextObject`](../../doc/models/context-object.md) | Optional | A Context Object. Can be `null`. |
| `timestamp` | `Integer` | Optional | Unix Millisecond Timestamp when data was fetched. |
| `progress_ms` | `Integer` | Optional | Progress into the currently playing track or episode. Can be `null`. |
| `is_playing` | `TrueClass \| FalseClass` | Optional | If something is currently playing, return `true`. |
| `item` | `Object` | Optional | The currently playing track or episode. Can be `null`. |
| `currently_playing_type` | `String` | Optional | The object type of the currently playing item. Can be one of `track`, `episode`, `ad` or `unknown`. |
| `actions` | [`DisallowsObject`](../../doc/models/disallows-object.md) | Optional | Allows to update the user interface based on which playback actions are available within the current context. |

## Example (as JSON)

```json
{
  "device": {
    "id": "id6",
    "is_active": false,
    "is_private_session": false,
    "is_restricted": false,
    "name": "name6"
  },
  "repeat_state": "repeat_state6",
  "shuffle_state": false,
  "context": {
    "type": "type8",
    "href": "href4",
    "external_urls": {
      "spotify": "spotify6"
    },
    "uri": "uri6"
  },
  "timestamp": 48
}
```

