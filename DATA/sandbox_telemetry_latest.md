# sandbox_telemetry_parse — 2026-10-13 20:11:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1209253 lines=3157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2344 |
| `chrome_profile_sample` | 805 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2344} |
| `chromeGpuPssKb` | {'int': 2344} |
| `chromeOtherPssKb` | {'int': 2344} |
| `chromeProcesses` | {'int': 2344} |
| `chromeProfiles` | {'int': 2344} |
| `chromeRendererMaxPssKb` | {'int': 2344} |
| `chromeRendererPssKb` | {'int': 2344} |
| `chromeRenderers` | {'int': 2344} |
| `chromeTabs` | {'int': 2344} |
| `chromeTabsProbedProfiles` | {'int': 2344} |
| `chromeUtilityPssKb` | {'int': 2344} |
| `desktopPssKb` | {'int': 2344} |
| `hostPssKb` | {'int': 2344} |
| `kind` | {'str': 2344} |
| `memAvailableKb` | {'int': 2344} |
| `memTotalKb` | {'int': 2344} |
| `otherPssKb` | {'int': 2344} |
| `processes` | {'int': 2344} |
| `pssFallbackProcesses` | {'int': 2344} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 804} |
| `display` | {'int': 805} |
| `kind` | {'str': 805} |
| `processes` | {'int': 805} |
| `pssKb` | {'int': 805} |
| `rendererMaxPssKb` | {'int': 805} |
| `renderers` | {'int': 805} |
| `tabs` | {'int': 805} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
