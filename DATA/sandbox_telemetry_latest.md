# sandbox_telemetry_parse — 2026-10-15 13:07:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=873634 lines=1937
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1932 |
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
| `chromeBrowserPssKb` | {'int': 1932} |
| `chromeGpuPssKb` | {'int': 1932} |
| `chromeOtherPssKb` | {'int': 1932} |
| `chromeProcesses` | {'int': 1932} |
| `chromeProfiles` | {'int': 1932} |
| `chromeRendererMaxPssKb` | {'int': 1932} |
| `chromeRendererPssKb` | {'int': 1932} |
| `chromeRenderers` | {'int': 1932} |
| `chromeTabs` | {'int': 1932} |
| `chromeTabsProbedProfiles` | {'int': 1932} |
| `chromeUtilityPssKb` | {'int': 1932} |
| `desktopPssKb` | {'int': 1932} |
| `hostPssKb` | {'int': 1932} |
| `kind` | {'str': 1932} |
| `memAvailableKb` | {'int': 1932} |
| `memTotalKb` | {'int': 1932} |
| `otherPssKb` | {'int': 1932} |
| `processes` | {'int': 1932} |
| `pssFallbackProcesses` | {'int': 1932} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
