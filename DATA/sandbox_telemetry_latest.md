# sandbox_telemetry_parse — 2026-10-14 08:35:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=190662 lines=426
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 421 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 421} |
| `chromeGpuPssKb` | {'int': 421} |
| `chromeOtherPssKb` | {'int': 421} |
| `chromeProcesses` | {'int': 421} |
| `chromeProfiles` | {'int': 421} |
| `chromeRendererMaxPssKb` | {'int': 421} |
| `chromeRendererPssKb` | {'int': 421} |
| `chromeRenderers` | {'int': 421} |
| `chromeTabs` | {'int': 421} |
| `chromeTabsProbedProfiles` | {'int': 421} |
| `chromeUtilityPssKb` | {'int': 421} |
| `desktopPssKb` | {'int': 421} |
| `hostPssKb` | {'int': 421} |
| `kind` | {'str': 421} |
| `memAvailableKb` | {'int': 421} |
| `memTotalKb` | {'int': 421} |
| `otherPssKb` | {'int': 421} |
| `processes` | {'int': 421} |
| `pssFallbackProcesses` | {'int': 421} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
