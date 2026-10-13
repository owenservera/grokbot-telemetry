# sandbox_telemetry_parse — 2026-10-13 07:50:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=927407 lines=2273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1902 |
| `chrome_profile_sample` | 363 |
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
| `chromeBrowserPssKb` | {'int': 1902} |
| `chromeGpuPssKb` | {'int': 1902} |
| `chromeOtherPssKb` | {'int': 1902} |
| `chromeProcesses` | {'int': 1902} |
| `chromeProfiles` | {'int': 1902} |
| `chromeRendererMaxPssKb` | {'int': 1902} |
| `chromeRendererPssKb` | {'int': 1902} |
| `chromeRenderers` | {'int': 1902} |
| `chromeTabs` | {'int': 1902} |
| `chromeTabsProbedProfiles` | {'int': 1902} |
| `chromeUtilityPssKb` | {'int': 1902} |
| `desktopPssKb` | {'int': 1902} |
| `hostPssKb` | {'int': 1902} |
| `kind` | {'str': 1902} |
| `memAvailableKb` | {'int': 1902} |
| `memTotalKb` | {'int': 1902} |
| `otherPssKb` | {'int': 1902} |
| `processes` | {'int': 1902} |
| `pssFallbackProcesses` | {'int': 1902} |

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
| `cpuMillicores` | {'int': 362} |
| `display` | {'int': 363} |
| `kind` | {'str': 363} |
| `processes` | {'int': 363} |
| `pssKb` | {'int': 363} |
| `rendererMaxPssKb` | {'int': 363} |
| `renderers` | {'int': 363} |
| `tabs` | {'int': 363} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
