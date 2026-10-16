# sandbox_telemetry_parse — 2026-10-16 03:49:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=59145 lines=220
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 134 |
| `memory_sample` | 77 |
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
| `chromeBrowserPssKb` | {'int': 77} |
| `chromeGpuPssKb` | {'int': 77} |
| `chromeOtherPssKb` | {'int': 77} |
| `chromeProcesses` | {'int': 77} |
| `chromeProfiles` | {'int': 77} |
| `chromeRendererMaxPssKb` | {'int': 77} |
| `chromeRendererPssKb` | {'int': 77} |
| `chromeRenderers` | {'int': 77} |
| `chromeTabs` | {'int': 77} |
| `chromeTabsProbedProfiles` | {'int': 77} |
| `chromeUtilityPssKb` | {'int': 77} |
| `desktopPssKb` | {'int': 77} |
| `hostPssKb` | {'int': 77} |
| `kind` | {'str': 77} |
| `memAvailableKb` | {'int': 77} |
| `memTotalKb` | {'int': 77} |
| `otherPssKb` | {'int': 77} |
| `processes` | {'int': 77} |
| `pssFallbackProcesses` | {'int': 77} |

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
| `cpuMillicores` | {'int': 131} |
| `display` | {'int': 134} |
| `kind` | {'str': 134} |
| `processes` | {'int': 134} |
| `pssKb` | {'int': 134} |
| `rendererMaxPssKb` | {'int': 134} |
| `renderers` | {'int': 134} |
| `tabs` | {'int': 133} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
