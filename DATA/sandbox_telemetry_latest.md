# sandbox_telemetry_parse — 2026-10-13 04:35:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=824309 lines=1949
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1740 |
| `chrome_profile_sample` | 201 |
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
| `chromeBrowserPssKb` | {'int': 1740} |
| `chromeGpuPssKb` | {'int': 1740} |
| `chromeOtherPssKb` | {'int': 1740} |
| `chromeProcesses` | {'int': 1740} |
| `chromeProfiles` | {'int': 1740} |
| `chromeRendererMaxPssKb` | {'int': 1740} |
| `chromeRendererPssKb` | {'int': 1740} |
| `chromeRenderers` | {'int': 1740} |
| `chromeTabs` | {'int': 1740} |
| `chromeTabsProbedProfiles` | {'int': 1740} |
| `chromeUtilityPssKb` | {'int': 1740} |
| `desktopPssKb` | {'int': 1740} |
| `hostPssKb` | {'int': 1740} |
| `kind` | {'str': 1740} |
| `memAvailableKb` | {'int': 1740} |
| `memTotalKb` | {'int': 1740} |
| `otherPssKb` | {'int': 1740} |
| `processes` | {'int': 1740} |
| `pssFallbackProcesses` | {'int': 1740} |

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
| `cpuMillicores` | {'int': 200} |
| `display` | {'int': 201} |
| `kind` | {'str': 201} |
| `processes` | {'int': 201} |
| `pssKb` | {'int': 201} |
| `rendererMaxPssKb` | {'int': 201} |
| `renderers` | {'int': 201} |
| `tabs` | {'int': 201} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
