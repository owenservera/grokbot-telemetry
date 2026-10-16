# sandbox_telemetry_parse — 2026-10-16 02:11:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1177948 lines=2630
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2592 |
| `chrome_profile_sample` | 30 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2592} |
| `chromeGpuPssKb` | {'int': 2592} |
| `chromeOtherPssKb` | {'int': 2592} |
| `chromeProcesses` | {'int': 2592} |
| `chromeProfiles` | {'int': 2592} |
| `chromeRendererMaxPssKb` | {'int': 2592} |
| `chromeRendererPssKb` | {'int': 2592} |
| `chromeRenderers` | {'int': 2592} |
| `chromeTabs` | {'int': 2592} |
| `chromeTabsProbedProfiles` | {'int': 2592} |
| `chromeUtilityPssKb` | {'int': 2592} |
| `desktopPssKb` | {'int': 2592} |
| `hostPssKb` | {'int': 2592} |
| `kind` | {'str': 2592} |
| `memAvailableKb` | {'int': 2592} |
| `memTotalKb` | {'int': 2592} |
| `otherPssKb` | {'int': 2592} |
| `processes` | {'int': 2592} |
| `pssFallbackProcesses` | {'int': 2592} |

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
| `cpuMillicores` | {'int': 29} |
| `display` | {'int': 30} |
| `kind` | {'str': 30} |
| `processes` | {'int': 30} |
| `pssKb` | {'int': 30} |
| `rendererMaxPssKb` | {'int': 30} |
| `renderers` | {'int': 30} |
| `tabs` | {'int': 30} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
