# sandbox_telemetry_parse — 2026-10-16 10:00:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=339870 lines=1270
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 834 |
| `memory_sample` | 427 |
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
| `chromeBrowserPssKb` | {'int': 427} |
| `chromeGpuPssKb` | {'int': 427} |
| `chromeOtherPssKb` | {'int': 427} |
| `chromeProcesses` | {'int': 427} |
| `chromeProfiles` | {'int': 427} |
| `chromeRendererMaxPssKb` | {'int': 427} |
| `chromeRendererPssKb` | {'int': 427} |
| `chromeRenderers` | {'int': 427} |
| `chromeTabs` | {'int': 427} |
| `chromeTabsProbedProfiles` | {'int': 427} |
| `chromeUtilityPssKb` | {'int': 427} |
| `desktopPssKb` | {'int': 427} |
| `hostPssKb` | {'int': 427} |
| `kind` | {'str': 427} |
| `memAvailableKb` | {'int': 427} |
| `memTotalKb` | {'int': 427} |
| `otherPssKb` | {'int': 427} |
| `processes` | {'int': 427} |
| `pssFallbackProcesses` | {'int': 427} |

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
| `cpuMillicores` | {'int': 831} |
| `display` | {'int': 834} |
| `kind` | {'str': 834} |
| `processes` | {'int': 834} |
| `pssKb` | {'int': 834} |
| `rendererMaxPssKb` | {'int': 834} |
| `renderers` | {'int': 834} |
| `tabs` | {'int': 833} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
