# sandbox_telemetry_parse — 2026-10-16 15:42:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=590239 lines=2206
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1458 |
| `memory_sample` | 739 |
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
| `chromeBrowserPssKb` | {'int': 739} |
| `chromeGpuPssKb` | {'int': 739} |
| `chromeOtherPssKb` | {'int': 739} |
| `chromeProcesses` | {'int': 739} |
| `chromeProfiles` | {'int': 739} |
| `chromeRendererMaxPssKb` | {'int': 739} |
| `chromeRendererPssKb` | {'int': 739} |
| `chromeRenderers` | {'int': 739} |
| `chromeTabs` | {'int': 739} |
| `chromeTabsProbedProfiles` | {'int': 739} |
| `chromeUtilityPssKb` | {'int': 739} |
| `desktopPssKb` | {'int': 739} |
| `hostPssKb` | {'int': 739} |
| `kind` | {'str': 739} |
| `memAvailableKb` | {'int': 739} |
| `memTotalKb` | {'int': 739} |
| `otherPssKb` | {'int': 739} |
| `processes` | {'int': 739} |
| `pssFallbackProcesses` | {'int': 739} |

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
| `cpuMillicores` | {'int': 1455} |
| `display` | {'int': 1458} |
| `kind` | {'str': 1458} |
| `processes` | {'int': 1458} |
| `pssKb` | {'int': 1458} |
| `rendererMaxPssKb` | {'int': 1458} |
| `renderers` | {'int': 1458} |
| `tabs` | {'int': 1457} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
