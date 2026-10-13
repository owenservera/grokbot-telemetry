# sandbox_telemetry_parse — 2026-10-13 05:54:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=866315 lines=2081
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1806 |
| `chrome_profile_sample` | 267 |
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
| `chromeBrowserPssKb` | {'int': 1806} |
| `chromeGpuPssKb` | {'int': 1806} |
| `chromeOtherPssKb` | {'int': 1806} |
| `chromeProcesses` | {'int': 1806} |
| `chromeProfiles` | {'int': 1806} |
| `chromeRendererMaxPssKb` | {'int': 1806} |
| `chromeRendererPssKb` | {'int': 1806} |
| `chromeRenderers` | {'int': 1806} |
| `chromeTabs` | {'int': 1806} |
| `chromeTabsProbedProfiles` | {'int': 1806} |
| `chromeUtilityPssKb` | {'int': 1806} |
| `desktopPssKb` | {'int': 1806} |
| `hostPssKb` | {'int': 1806} |
| `kind` | {'str': 1806} |
| `memAvailableKb` | {'int': 1806} |
| `memTotalKb` | {'int': 1806} |
| `otherPssKb` | {'int': 1806} |
| `processes` | {'int': 1806} |
| `pssFallbackProcesses` | {'int': 1806} |

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
| `cpuMillicores` | {'int': 266} |
| `display` | {'int': 267} |
| `kind` | {'str': 267} |
| `processes` | {'int': 267} |
| `pssKb` | {'int': 267} |
| `rendererMaxPssKb` | {'int': 267} |
| `renderers` | {'int': 267} |
| `tabs` | {'int': 267} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
