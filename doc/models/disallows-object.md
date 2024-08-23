
# Disallows Object

## Structure

`DisallowsObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `interrupting_playback` | `TrueClass \| FalseClass` | Optional | Interrupting playback. Optional field. |
| `pausing` | `TrueClass \| FalseClass` | Optional | Pausing. Optional field. |
| `resuming` | `TrueClass \| FalseClass` | Optional | Resuming. Optional field. |
| `seeking` | `TrueClass \| FalseClass` | Optional | Seeking playback location. Optional field. |
| `skipping_next` | `TrueClass \| FalseClass` | Optional | Skipping to the next context. Optional field. |
| `skipping_prev` | `TrueClass \| FalseClass` | Optional | Skipping to the previous context. Optional field. |
| `toggling_repeat_context` | `TrueClass \| FalseClass` | Optional | Toggling repeat context flag. Optional field. |
| `toggling_shuffle` | `TrueClass \| FalseClass` | Optional | Toggling shuffle flag. Optional field. |
| `toggling_repeat_track` | `TrueClass \| FalseClass` | Optional | Toggling repeat track flag. Optional field. |
| `transferring_playback` | `TrueClass \| FalseClass` | Optional | Transfering playback between devices. Optional field. |

## Example (as JSON)

```json
{
  "interrupting_playback": false,
  "pausing": false,
  "resuming": false,
  "seeking": false,
  "skipping_next": false
}
```

