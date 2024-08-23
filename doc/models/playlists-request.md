
# Playlists Request

## Structure

`PlaylistsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | The new name for the playlist, for example `"My New Playlist Title"` |
| `public` | `TrueClass \| FalseClass` | Optional | If `true` the playlist will be public, if `false` it will be private. |
| `collaborative` | `TrueClass \| FalseClass` | Optional | If `true`, the playlist will become collaborative and other users will be able to modify the playlist in their Spotify client. <br/><br>_**Note**: You can only set `collaborative` to `true` on non-public playlists._ |
| `description` | `String` | Optional | Value for playlist description as displayed in Spotify Clients and in the Web API. |

## Example (as JSON)

```json
{
  "name": "Updated Playlist Name",
  "description": "Updated playlist description",
  "public": false,
  "collaborative": false
}
```

