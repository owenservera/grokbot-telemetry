# sandbox_telemetry_parse — 2026-10-13 11:12:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1034952 lines=2611
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2071 |
| `chrome_profile_sample` | 532 |
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
| `chromeBrowserPssKb` | {'int': 2071} |
| `chromeGpuPssKb` | {'int': 2071} |
| `chromeOtherPssKb` | {'int': 2071} |
| `chromeProcesses` | {'int': 2071} |
| `chromeProfiles` | {'int': 2071} |
| `chromeRendererMaxPssKb` | {'int': 2071} |
| `chromeRendererPssKb` | {'int': 2071} |
| `chromeRenderers` | {'int': 2071} |
| `chromeTabs` | {'int': 2071} |
| `chromeTabsProbedProfiles` | {'int': 2071} |
| `chromeUtilityPssKb` | {'int': 2071} |
| `desktopPssKb` | {'int': 2071} |
| `hostPssKb` | {'int': 2071} |
| `kind` | {'str': 2071} |
| `memAvailableKb` | {'int': 2071} |
| `memTotalKb` | {'int': 2071} |
| `otherPssKb` | {'int': 2071} |
| `processes` | {'int': 2071} |
| `pssFallbackProcesses` | {'int': 2071} |

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
| `cpuMillicores` | {'int': 531} |
| `display` | {'int': 532} |
| `kind` | {'str': 532} |
| `processes` | {'int': 532} |
| `pssKb` | {'int': 532} |
| `rendererMaxPssKb` | {'int': 532} |
| `renderers` | {'int': 532} |
| `tabs` | {'int': 532} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
