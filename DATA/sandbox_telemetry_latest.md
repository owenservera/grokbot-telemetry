# sandbox_telemetry_parse — 2026-10-16 14:39:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=541293 lines=2023
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1336 |
| `memory_sample` | 678 |
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
| `chromeBrowserPssKb` | {'int': 678} |
| `chromeGpuPssKb` | {'int': 678} |
| `chromeOtherPssKb` | {'int': 678} |
| `chromeProcesses` | {'int': 678} |
| `chromeProfiles` | {'int': 678} |
| `chromeRendererMaxPssKb` | {'int': 678} |
| `chromeRendererPssKb` | {'int': 678} |
| `chromeRenderers` | {'int': 678} |
| `chromeTabs` | {'int': 678} |
| `chromeTabsProbedProfiles` | {'int': 678} |
| `chromeUtilityPssKb` | {'int': 678} |
| `desktopPssKb` | {'int': 678} |
| `hostPssKb` | {'int': 678} |
| `kind` | {'str': 678} |
| `memAvailableKb` | {'int': 678} |
| `memTotalKb` | {'int': 678} |
| `otherPssKb` | {'int': 678} |
| `processes` | {'int': 678} |
| `pssFallbackProcesses` | {'int': 678} |

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
| `cpuMillicores` | {'int': 1333} |
| `display` | {'int': 1336} |
| `kind` | {'str': 1336} |
| `processes` | {'int': 1336} |
| `pssKb` | {'int': 1336} |
| `rendererMaxPssKb` | {'int': 1336} |
| `renderers` | {'int': 1336} |
| `tabs` | {'int': 1335} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
