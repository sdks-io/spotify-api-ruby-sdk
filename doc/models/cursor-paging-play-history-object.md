
# Cursor Paging Play History Object

## Structure

`CursorPagingPlayHistoryObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `href` | `String` | Optional | A link to the Web API endpoint returning the full result of the request. |
| `limit` | `Integer` | Optional | The maximum number of items in the response (as set in the query or by default). |
| `mnext` | `String` | Optional | URL to the next page of items. ( `null` if none) |
| `cursors` | [`CursorObject`](../../doc/models/cursor-object.md) | Optional | The cursors used to find the next set of items. |
| `total` | `Integer` | Optional | The total number of items available to return. |
| `items` | [`Array<PlayHistoryObject>`](../../doc/models/play-history-object.md) | Optional | - |

## Example (as JSON)

```json
{
  "href": "href2",
  "limit": 16,
  "next": "next2",
  "cursors": {
    "after": "after8",
    "before": "before6"
  },
  "total": 110
}
```

