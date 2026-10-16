# sandbox_telemetry_parse — 2026-10-16 11:34:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=406442 lines=1519
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1000 |
| `memory_sample` | 510 |
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
| `chromeBrowserPssKb` | {'int': 510} |
| `chromeGpuPssKb` | {'int': 510} |
| `chromeOtherPssKb` | {'int': 510} |
| `chromeProcesses` | {'int': 510} |
| `chromeProfiles` | {'int': 510} |
| `chromeRendererMaxPssKb` | {'int': 510} |
| `chromeRendererPssKb` | {'int': 510} |
| `chromeRenderers` | {'int': 510} |
| `chromeTabs` | {'int': 510} |
| `chromeTabsProbedProfiles` | {'int': 510} |
| `chromeUtilityPssKb` | {'int': 510} |
| `desktopPssKb` | {'int': 510} |
| `hostPssKb` | {'int': 510} |
| `kind` | {'str': 510} |
| `memAvailableKb` | {'int': 510} |
| `memTotalKb` | {'int': 510} |
| `otherPssKb` | {'int': 510} |
| `processes` | {'int': 510} |
| `pssFallbackProcesses` | {'int': 510} |

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
| `cpuMillicores` | {'int': 997} |
| `display` | {'int': 1000} |
| `kind` | {'str': 1000} |
| `processes` | {'int': 1000} |
| `pssKb` | {'int': 1000} |
| `rendererMaxPssKb` | {'int': 1000} |
| `renderers` | {'int': 1000} |
| `tabs` | {'int': 999} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
