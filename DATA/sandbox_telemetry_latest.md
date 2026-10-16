# sandbox_telemetry_parse — 2026-10-16 21:57:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=862413 lines=3223
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2136 |
| `memory_sample` | 1078 |
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
| `chromeBrowserPssKb` | {'int': 1078} |
| `chromeGpuPssKb` | {'int': 1078} |
| `chromeOtherPssKb` | {'int': 1078} |
| `chromeProcesses` | {'int': 1078} |
| `chromeProfiles` | {'int': 1078} |
| `chromeRendererMaxPssKb` | {'int': 1078} |
| `chromeRendererPssKb` | {'int': 1078} |
| `chromeRenderers` | {'int': 1078} |
| `chromeTabs` | {'int': 1078} |
| `chromeTabsProbedProfiles` | {'int': 1078} |
| `chromeUtilityPssKb` | {'int': 1078} |
| `desktopPssKb` | {'int': 1078} |
| `hostPssKb` | {'int': 1078} |
| `kind` | {'str': 1078} |
| `memAvailableKb` | {'int': 1078} |
| `memTotalKb` | {'int': 1078} |
| `otherPssKb` | {'int': 1078} |
| `processes` | {'int': 1078} |
| `pssFallbackProcesses` | {'int': 1078} |

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
| `cpuMillicores` | {'int': 2133} |
| `display` | {'int': 2136} |
| `kind` | {'str': 2136} |
| `processes` | {'int': 2136} |
| `pssKb` | {'int': 2136} |
| `rendererMaxPssKb` | {'int': 2136} |
| `renderers` | {'int': 2136} |
| `tabs` | {'int': 2135} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
