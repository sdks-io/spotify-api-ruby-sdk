
# Meta

## Structure

`Meta`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `analyzer_version` | `String` | Optional | The version of the Analyzer used to analyze this track. |
| `platform` | `String` | Optional | The platform used to read the track's audio data. |
| `detailed_status` | `String` | Optional | A detailed status code for this track. If analysis data is missing, this code may explain why. |
| `status_code` | `Integer` | Optional | The return code of the analyzer process. 0 if successful, 1 if any errors occurred. |
| `timestamp` | `Integer` | Optional | The Unix timestamp (in seconds) at which this track was analyzed. |
| `analysis_time` | `Float` | Optional | The amount of time taken to analyze this track. |
| `input_process` | `String` | Optional | The method used to read the track's audio data. |

## Example (as JSON)

```json
{
  "analyzer_version": "4.0.0",
  "platform": "Linux",
  "detailed_status": "OK",
  "status_code": 0,
  "timestamp": 1495193577,
  "analysis_time": 6.93906,
  "input_process": "libvorbisfile L+R 44100->22050"
}
```

