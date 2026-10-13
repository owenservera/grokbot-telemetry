# sandbox_telemetry_parse — 2026-10-13 06:40:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=892407 lines=2163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1847 |
| `chrome_profile_sample` | 308 |
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
| `chromeBrowserPssKb` | {'int': 1847} |
| `chromeGpuPssKb` | {'int': 1847} |
| `chromeOtherPssKb` | {'int': 1847} |
| `chromeProcesses` | {'int': 1847} |
| `chromeProfiles` | {'int': 1847} |
| `chromeRendererMaxPssKb` | {'int': 1847} |
| `chromeRendererPssKb` | {'int': 1847} |
| `chromeRenderers` | {'int': 1847} |
| `chromeTabs` | {'int': 1847} |
| `chromeTabsProbedProfiles` | {'int': 1847} |
| `chromeUtilityPssKb` | {'int': 1847} |
| `desktopPssKb` | {'int': 1847} |
| `hostPssKb` | {'int': 1847} |
| `kind` | {'str': 1847} |
| `memAvailableKb` | {'int': 1847} |
| `memTotalKb` | {'int': 1847} |
| `otherPssKb` | {'int': 1847} |
| `processes` | {'int': 1847} |
| `pssFallbackProcesses` | {'int': 1847} |

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
| `cpuMillicores` | {'int': 307} |
| `display` | {'int': 308} |
| `kind` | {'str': 308} |
| `processes` | {'int': 308} |
| `pssKb` | {'int': 308} |
| `rendererMaxPssKb` | {'int': 308} |
| `renderers` | {'int': 308} |
| `tabs` | {'int': 308} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
