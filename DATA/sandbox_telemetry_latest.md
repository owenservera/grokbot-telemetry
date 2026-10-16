# sandbox_telemetry_parse — 2026-10-16 17:35:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=676913 lines=2530
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1674 |
| `memory_sample` | 847 |
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
| `chromeBrowserPssKb` | {'int': 847} |
| `chromeGpuPssKb` | {'int': 847} |
| `chromeOtherPssKb` | {'int': 847} |
| `chromeProcesses` | {'int': 847} |
| `chromeProfiles` | {'int': 847} |
| `chromeRendererMaxPssKb` | {'int': 847} |
| `chromeRendererPssKb` | {'int': 847} |
| `chromeRenderers` | {'int': 847} |
| `chromeTabs` | {'int': 847} |
| `chromeTabsProbedProfiles` | {'int': 847} |
| `chromeUtilityPssKb` | {'int': 847} |
| `desktopPssKb` | {'int': 847} |
| `hostPssKb` | {'int': 847} |
| `kind` | {'str': 847} |
| `memAvailableKb` | {'int': 847} |
| `memTotalKb` | {'int': 847} |
| `otherPssKb` | {'int': 847} |
| `processes` | {'int': 847} |
| `pssFallbackProcesses` | {'int': 847} |

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
| `cpuMillicores` | {'int': 1671} |
| `display` | {'int': 1674} |
| `kind` | {'str': 1674} |
| `processes` | {'int': 1674} |
| `pssKb` | {'int': 1674} |
| `rendererMaxPssKb` | {'int': 1674} |
| `renderers` | {'int': 1674} |
| `tabs` | {'int': 1673} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
