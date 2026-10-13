# sandbox_telemetry_parse — 2026-10-14 00:18:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1324168 lines=3517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2524 |
| `chrome_profile_sample` | 985 |
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
| `chromeBrowserPssKb` | {'int': 2524} |
| `chromeGpuPssKb` | {'int': 2524} |
| `chromeOtherPssKb` | {'int': 2524} |
| `chromeProcesses` | {'int': 2524} |
| `chromeProfiles` | {'int': 2524} |
| `chromeRendererMaxPssKb` | {'int': 2524} |
| `chromeRendererPssKb` | {'int': 2524} |
| `chromeRenderers` | {'int': 2524} |
| `chromeTabs` | {'int': 2524} |
| `chromeTabsProbedProfiles` | {'int': 2524} |
| `chromeUtilityPssKb` | {'int': 2524} |
| `desktopPssKb` | {'int': 2524} |
| `hostPssKb` | {'int': 2524} |
| `kind` | {'str': 2524} |
| `memAvailableKb` | {'int': 2524} |
| `memTotalKb` | {'int': 2524} |
| `otherPssKb` | {'int': 2524} |
| `processes` | {'int': 2524} |
| `pssFallbackProcesses` | {'int': 2524} |

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
| `cpuMillicores` | {'int': 984} |
| `display` | {'int': 985} |
| `kind` | {'str': 985} |
| `processes` | {'int': 985} |
| `pssKb` | {'int': 985} |
| `rendererMaxPssKb` | {'int': 985} |
| `renderers` | {'int': 985} |
| `tabs` | {'int': 985} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
