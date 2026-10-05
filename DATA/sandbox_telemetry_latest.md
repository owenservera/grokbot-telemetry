# sandbox_telemetry_parse — 2026-10-05 17:08:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=68542 lines=218
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 114 |
| `chrome_profile_sample` | 94 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 114} |
| `chromeGpuPssKb` | {'int': 114} |
| `chromeOtherPssKb` | {'int': 114} |
| `chromeProcesses` | {'int': 114} |
| `chromeProfiles` | {'int': 114} |
| `chromeRendererMaxPssKb` | {'int': 114} |
| `chromeRendererPssKb` | {'int': 114} |
| `chromeRenderers` | {'int': 114} |
| `chromeTabs` | {'int': 114} |
| `chromeTabsProbedProfiles` | {'int': 114} |
| `chromeUtilityPssKb` | {'int': 114} |
| `desktopPssKb` | {'int': 114} |
| `hostPssKb` | {'int': 114} |
| `kind` | {'str': 114} |
| `memAvailableKb` | {'int': 114} |
| `memTotalKb` | {'int': 114} |
| `otherPssKb` | {'int': 114} |
| `processes` | {'int': 114} |
| `pssFallbackProcesses` | {'int': 114} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

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
| `cpuMillicores` | {'int': 90} |
| `display` | {'int': 94} |
| `kind` | {'str': 94} |
| `processes` | {'int': 94} |
| `pssKb` | {'int': 94} |
| `rendererMaxPssKb` | {'int': 94} |
| `renderers` | {'int': 94} |
| `tabs` | {'int': 94} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
