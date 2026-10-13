# sandbox_telemetry_parse — 2026-10-13 20:42:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1217558 lines=3183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2357 |
| `chrome_profile_sample` | 818 |
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
| `chromeBrowserPssKb` | {'int': 2357} |
| `chromeGpuPssKb` | {'int': 2357} |
| `chromeOtherPssKb` | {'int': 2357} |
| `chromeProcesses` | {'int': 2357} |
| `chromeProfiles` | {'int': 2357} |
| `chromeRendererMaxPssKb` | {'int': 2357} |
| `chromeRendererPssKb` | {'int': 2357} |
| `chromeRenderers` | {'int': 2357} |
| `chromeTabs` | {'int': 2357} |
| `chromeTabsProbedProfiles` | {'int': 2357} |
| `chromeUtilityPssKb` | {'int': 2357} |
| `desktopPssKb` | {'int': 2357} |
| `hostPssKb` | {'int': 2357} |
| `kind` | {'str': 2357} |
| `memAvailableKb` | {'int': 2357} |
| `memTotalKb` | {'int': 2357} |
| `otherPssKb` | {'int': 2357} |
| `processes` | {'int': 2357} |
| `pssFallbackProcesses` | {'int': 2357} |

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
| `cpuMillicores` | {'int': 817} |
| `display` | {'int': 818} |
| `kind` | {'str': 818} |
| `processes` | {'int': 818} |
| `pssKb` | {'int': 818} |
| `rendererMaxPssKb` | {'int': 818} |
| `renderers` | {'int': 818} |
| `tabs` | {'int': 818} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
