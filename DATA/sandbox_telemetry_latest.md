# sandbox_telemetry_parse — 2026-10-13 06:37:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=890497 lines=2157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1844 |
| `chrome_profile_sample` | 305 |
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
| `chromeBrowserPssKb` | {'int': 1844} |
| `chromeGpuPssKb` | {'int': 1844} |
| `chromeOtherPssKb` | {'int': 1844} |
| `chromeProcesses` | {'int': 1844} |
| `chromeProfiles` | {'int': 1844} |
| `chromeRendererMaxPssKb` | {'int': 1844} |
| `chromeRendererPssKb` | {'int': 1844} |
| `chromeRenderers` | {'int': 1844} |
| `chromeTabs` | {'int': 1844} |
| `chromeTabsProbedProfiles` | {'int': 1844} |
| `chromeUtilityPssKb` | {'int': 1844} |
| `desktopPssKb` | {'int': 1844} |
| `hostPssKb` | {'int': 1844} |
| `kind` | {'str': 1844} |
| `memAvailableKb` | {'int': 1844} |
| `memTotalKb` | {'int': 1844} |
| `otherPssKb` | {'int': 1844} |
| `processes` | {'int': 1844} |
| `pssFallbackProcesses` | {'int': 1844} |

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
| `cpuMillicores` | {'int': 304} |
| `display` | {'int': 305} |
| `kind` | {'str': 305} |
| `processes` | {'int': 305} |
| `pssKb` | {'int': 305} |
| `rendererMaxPssKb` | {'int': 305} |
| `renderers` | {'int': 305} |
| `tabs` | {'int': 305} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
