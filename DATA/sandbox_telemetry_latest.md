# sandbox_telemetry_parse — 2026-10-16 03:46:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=57543 lines=214
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 130 |
| `memory_sample` | 75 |
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
| `chromeBrowserPssKb` | {'int': 75} |
| `chromeGpuPssKb` | {'int': 75} |
| `chromeOtherPssKb` | {'int': 75} |
| `chromeProcesses` | {'int': 75} |
| `chromeProfiles` | {'int': 75} |
| `chromeRendererMaxPssKb` | {'int': 75} |
| `chromeRendererPssKb` | {'int': 75} |
| `chromeRenderers` | {'int': 75} |
| `chromeTabs` | {'int': 75} |
| `chromeTabsProbedProfiles` | {'int': 75} |
| `chromeUtilityPssKb` | {'int': 75} |
| `desktopPssKb` | {'int': 75} |
| `hostPssKb` | {'int': 75} |
| `kind` | {'str': 75} |
| `memAvailableKb` | {'int': 75} |
| `memTotalKb` | {'int': 75} |
| `otherPssKb` | {'int': 75} |
| `processes` | {'int': 75} |
| `pssFallbackProcesses` | {'int': 75} |

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
| `cpuMillicores` | {'int': 127} |
| `display` | {'int': 130} |
| `kind` | {'str': 130} |
| `processes` | {'int': 130} |
| `pssKb` | {'int': 130} |
| `rendererMaxPssKb` | {'int': 130} |
| `renderers` | {'int': 130} |
| `tabs` | {'int': 129} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
