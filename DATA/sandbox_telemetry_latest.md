# sandbox_telemetry_parse — 2026-10-13 18:32:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1188179 lines=3091
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2311 |
| `chrome_profile_sample` | 772 |
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
| `chromeBrowserPssKb` | {'int': 2311} |
| `chromeGpuPssKb` | {'int': 2311} |
| `chromeOtherPssKb` | {'int': 2311} |
| `chromeProcesses` | {'int': 2311} |
| `chromeProfiles` | {'int': 2311} |
| `chromeRendererMaxPssKb` | {'int': 2311} |
| `chromeRendererPssKb` | {'int': 2311} |
| `chromeRenderers` | {'int': 2311} |
| `chromeTabs` | {'int': 2311} |
| `chromeTabsProbedProfiles` | {'int': 2311} |
| `chromeUtilityPssKb` | {'int': 2311} |
| `desktopPssKb` | {'int': 2311} |
| `hostPssKb` | {'int': 2311} |
| `kind` | {'str': 2311} |
| `memAvailableKb` | {'int': 2311} |
| `memTotalKb` | {'int': 2311} |
| `otherPssKb` | {'int': 2311} |
| `processes` | {'int': 2311} |
| `pssFallbackProcesses` | {'int': 2311} |

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
| `cpuMillicores` | {'int': 771} |
| `display` | {'int': 772} |
| `kind` | {'str': 772} |
| `processes` | {'int': 772} |
| `pssKb` | {'int': 772} |
| `rendererMaxPssKb` | {'int': 772} |
| `renderers` | {'int': 772} |
| `tabs` | {'int': 772} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
