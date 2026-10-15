# sandbox_telemetry_parse — 2026-10-15 08:41:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=766510 lines=1700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1695 |
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
| `chromeBrowserPssKb` | {'int': 1695} |
| `chromeGpuPssKb` | {'int': 1695} |
| `chromeOtherPssKb` | {'int': 1695} |
| `chromeProcesses` | {'int': 1695} |
| `chromeProfiles` | {'int': 1695} |
| `chromeRendererMaxPssKb` | {'int': 1695} |
| `chromeRendererPssKb` | {'int': 1695} |
| `chromeRenderers` | {'int': 1695} |
| `chromeTabs` | {'int': 1695} |
| `chromeTabsProbedProfiles` | {'int': 1695} |
| `chromeUtilityPssKb` | {'int': 1695} |
| `desktopPssKb` | {'int': 1695} |
| `hostPssKb` | {'int': 1695} |
| `kind` | {'str': 1695} |
| `memAvailableKb` | {'int': 1695} |
| `memTotalKb` | {'int': 1695} |
| `otherPssKb` | {'int': 1695} |
| `processes` | {'int': 1695} |
| `pssFallbackProcesses` | {'int': 1695} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
