# sandbox_telemetry_parse — 2026-10-16 06:03:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=165720 lines=619
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 400 |
| `memory_sample` | 210 |
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
| `chromeBrowserPssKb` | {'int': 210} |
| `chromeGpuPssKb` | {'int': 210} |
| `chromeOtherPssKb` | {'int': 210} |
| `chromeProcesses` | {'int': 210} |
| `chromeProfiles` | {'int': 210} |
| `chromeRendererMaxPssKb` | {'int': 210} |
| `chromeRendererPssKb` | {'int': 210} |
| `chromeRenderers` | {'int': 210} |
| `chromeTabs` | {'int': 210} |
| `chromeTabsProbedProfiles` | {'int': 210} |
| `chromeUtilityPssKb` | {'int': 210} |
| `desktopPssKb` | {'int': 210} |
| `hostPssKb` | {'int': 210} |
| `kind` | {'str': 210} |
| `memAvailableKb` | {'int': 210} |
| `memTotalKb` | {'int': 210} |
| `otherPssKb` | {'int': 210} |
| `processes` | {'int': 210} |
| `pssFallbackProcesses` | {'int': 210} |

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
| `cpuMillicores` | {'int': 397} |
| `display` | {'int': 400} |
| `kind` | {'str': 400} |
| `processes` | {'int': 400} |
| `pssKb` | {'int': 400} |
| `rendererMaxPssKb` | {'int': 400} |
| `renderers` | {'int': 400} |
| `tabs` | {'int': 399} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
