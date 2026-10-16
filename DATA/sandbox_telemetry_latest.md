# sandbox_telemetry_parse — 2026-10-16 04:36:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=96754 lines=361
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 228 |
| `memory_sample` | 124 |
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
| `chromeBrowserPssKb` | {'int': 124} |
| `chromeGpuPssKb` | {'int': 124} |
| `chromeOtherPssKb` | {'int': 124} |
| `chromeProcesses` | {'int': 124} |
| `chromeProfiles` | {'int': 124} |
| `chromeRendererMaxPssKb` | {'int': 124} |
| `chromeRendererPssKb` | {'int': 124} |
| `chromeRenderers` | {'int': 124} |
| `chromeTabs` | {'int': 124} |
| `chromeTabsProbedProfiles` | {'int': 124} |
| `chromeUtilityPssKb` | {'int': 124} |
| `desktopPssKb` | {'int': 124} |
| `hostPssKb` | {'int': 124} |
| `kind` | {'str': 124} |
| `memAvailableKb` | {'int': 124} |
| `memTotalKb` | {'int': 124} |
| `otherPssKb` | {'int': 124} |
| `processes` | {'int': 124} |
| `pssFallbackProcesses` | {'int': 124} |

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
| `cpuMillicores` | {'int': 225} |
| `display` | {'int': 228} |
| `kind` | {'str': 228} |
| `processes` | {'int': 228} |
| `pssKb` | {'int': 228} |
| `rendererMaxPssKb` | {'int': 228} |
| `renderers` | {'int': 228} |
| `tabs` | {'int': 227} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
