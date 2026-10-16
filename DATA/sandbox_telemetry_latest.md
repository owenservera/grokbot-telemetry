# sandbox_telemetry_parse — 2026-10-16 06:30:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=187370 lines=700
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 454 |
| `memory_sample` | 237 |
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
| `chromeBrowserPssKb` | {'int': 237} |
| `chromeGpuPssKb` | {'int': 237} |
| `chromeOtherPssKb` | {'int': 237} |
| `chromeProcesses` | {'int': 237} |
| `chromeProfiles` | {'int': 237} |
| `chromeRendererMaxPssKb` | {'int': 237} |
| `chromeRendererPssKb` | {'int': 237} |
| `chromeRenderers` | {'int': 237} |
| `chromeTabs` | {'int': 237} |
| `chromeTabsProbedProfiles` | {'int': 237} |
| `chromeUtilityPssKb` | {'int': 237} |
| `desktopPssKb` | {'int': 237} |
| `hostPssKb` | {'int': 237} |
| `kind` | {'str': 237} |
| `memAvailableKb` | {'int': 237} |
| `memTotalKb` | {'int': 237} |
| `otherPssKb` | {'int': 237} |
| `processes` | {'int': 237} |
| `pssFallbackProcesses` | {'int': 237} |

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
| `cpuMillicores` | {'int': 451} |
| `display` | {'int': 454} |
| `kind` | {'str': 454} |
| `processes` | {'int': 454} |
| `pssKb` | {'int': 454} |
| `rendererMaxPssKb` | {'int': 454} |
| `renderers` | {'int': 454} |
| `tabs` | {'int': 453} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
