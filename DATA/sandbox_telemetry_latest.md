# sandbox_telemetry_parse — 2026-10-16 20:32:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=806996 lines=3016
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1998 |
| `memory_sample` | 1009 |
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
| `chromeBrowserPssKb` | {'int': 1009} |
| `chromeGpuPssKb` | {'int': 1009} |
| `chromeOtherPssKb` | {'int': 1009} |
| `chromeProcesses` | {'int': 1009} |
| `chromeProfiles` | {'int': 1009} |
| `chromeRendererMaxPssKb` | {'int': 1009} |
| `chromeRendererPssKb` | {'int': 1009} |
| `chromeRenderers` | {'int': 1009} |
| `chromeTabs` | {'int': 1009} |
| `chromeTabsProbedProfiles` | {'int': 1009} |
| `chromeUtilityPssKb` | {'int': 1009} |
| `desktopPssKb` | {'int': 1009} |
| `hostPssKb` | {'int': 1009} |
| `kind` | {'str': 1009} |
| `memAvailableKb` | {'int': 1009} |
| `memTotalKb` | {'int': 1009} |
| `otherPssKb` | {'int': 1009} |
| `processes` | {'int': 1009} |
| `pssFallbackProcesses` | {'int': 1009} |

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
| `cpuMillicores` | {'int': 1995} |
| `display` | {'int': 1998} |
| `kind` | {'str': 1998} |
| `processes` | {'int': 1998} |
| `pssKb` | {'int': 1998} |
| `rendererMaxPssKb` | {'int': 1998} |
| `renderers` | {'int': 1998} |
| `tabs` | {'int': 1997} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
