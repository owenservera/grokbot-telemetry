# sandbox_telemetry_parse — 2026-10-16 11:18:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=394416 lines=1474
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 970 |
| `memory_sample` | 495 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 495} |
| `chromeGpuPssKb` | {'int': 495} |
| `chromeOtherPssKb` | {'int': 495} |
| `chromeProcesses` | {'int': 495} |
| `chromeProfiles` | {'int': 495} |
| `chromeRendererMaxPssKb` | {'int': 495} |
| `chromeRendererPssKb` | {'int': 495} |
| `chromeRenderers` | {'int': 495} |
| `chromeTabs` | {'int': 495} |
| `chromeTabsProbedProfiles` | {'int': 495} |
| `chromeUtilityPssKb` | {'int': 495} |
| `desktopPssKb` | {'int': 495} |
| `hostPssKb` | {'int': 495} |
| `kind` | {'str': 495} |
| `memAvailableKb` | {'int': 495} |
| `memTotalKb` | {'int': 495} |
| `otherPssKb` | {'int': 495} |
| `processes` | {'int': 495} |
| `pssFallbackProcesses` | {'int': 495} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 967} |
| `display` | {'int': 970} |
| `kind` | {'str': 970} |
| `processes` | {'int': 970} |
| `pssKb` | {'int': 970} |
| `rendererMaxPssKb` | {'int': 970} |
| `renderers` | {'int': 970} |
| `tabs` | {'int': 969} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
