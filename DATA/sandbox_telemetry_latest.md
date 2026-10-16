# sandbox_telemetry_parse — 2026-10-16 03:01:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=21474 lines=79
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 40 |
| `memory_sample` | 30 |
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
| `chromeBrowserPssKb` | {'int': 30} |
| `chromeGpuPssKb` | {'int': 30} |
| `chromeOtherPssKb` | {'int': 30} |
| `chromeProcesses` | {'int': 30} |
| `chromeProfiles` | {'int': 30} |
| `chromeRendererMaxPssKb` | {'int': 30} |
| `chromeRendererPssKb` | {'int': 30} |
| `chromeRenderers` | {'int': 30} |
| `chromeTabs` | {'int': 30} |
| `chromeTabsProbedProfiles` | {'int': 30} |
| `chromeUtilityPssKb` | {'int': 30} |
| `desktopPssKb` | {'int': 30} |
| `hostPssKb` | {'int': 30} |
| `kind` | {'str': 30} |
| `memAvailableKb` | {'int': 30} |
| `memTotalKb` | {'int': 30} |
| `otherPssKb` | {'int': 30} |
| `processes` | {'int': 30} |
| `pssFallbackProcesses` | {'int': 30} |

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
| `cpuMillicores` | {'int': 37} |
| `display` | {'int': 40} |
| `kind` | {'str': 40} |
| `processes` | {'int': 40} |
| `pssKb` | {'int': 40} |
| `rendererMaxPssKb` | {'int': 40} |
| `renderers` | {'int': 40} |
| `tabs` | {'int': 39} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
