# sandbox_telemetry_parse — 2026-10-16 15:41:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=588633 lines=2200
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1454 |
| `memory_sample` | 737 |
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
| `chromeBrowserPssKb` | {'int': 737} |
| `chromeGpuPssKb` | {'int': 737} |
| `chromeOtherPssKb` | {'int': 737} |
| `chromeProcesses` | {'int': 737} |
| `chromeProfiles` | {'int': 737} |
| `chromeRendererMaxPssKb` | {'int': 737} |
| `chromeRendererPssKb` | {'int': 737} |
| `chromeRenderers` | {'int': 737} |
| `chromeTabs` | {'int': 737} |
| `chromeTabsProbedProfiles` | {'int': 737} |
| `chromeUtilityPssKb` | {'int': 737} |
| `desktopPssKb` | {'int': 737} |
| `hostPssKb` | {'int': 737} |
| `kind` | {'str': 737} |
| `memAvailableKb` | {'int': 737} |
| `memTotalKb` | {'int': 737} |
| `otherPssKb` | {'int': 737} |
| `processes` | {'int': 737} |
| `pssFallbackProcesses` | {'int': 737} |

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
| `cpuMillicores` | {'int': 1451} |
| `display` | {'int': 1454} |
| `kind` | {'str': 1454} |
| `processes` | {'int': 1454} |
| `pssKb` | {'int': 1454} |
| `rendererMaxPssKb` | {'int': 1454} |
| `renderers` | {'int': 1454} |
| `tabs` | {'int': 1453} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
