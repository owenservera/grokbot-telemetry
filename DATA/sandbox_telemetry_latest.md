# sandbox_telemetry_parse — 2026-10-14 02:02:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=35626 lines=83
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 78 |
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
| `chromeBrowserPssKb` | {'int': 78} |
| `chromeGpuPssKb` | {'int': 78} |
| `chromeOtherPssKb` | {'int': 78} |
| `chromeProcesses` | {'int': 78} |
| `chromeProfiles` | {'int': 78} |
| `chromeRendererMaxPssKb` | {'int': 78} |
| `chromeRendererPssKb` | {'int': 78} |
| `chromeRenderers` | {'int': 78} |
| `chromeTabs` | {'int': 78} |
| `chromeTabsProbedProfiles` | {'int': 78} |
| `chromeUtilityPssKb` | {'int': 78} |
| `desktopPssKb` | {'int': 78} |
| `hostPssKb` | {'int': 78} |
| `kind` | {'str': 78} |
| `memAvailableKb` | {'int': 78} |
| `memTotalKb` | {'int': 78} |
| `otherPssKb` | {'int': 78} |
| `processes` | {'int': 78} |
| `pssFallbackProcesses` | {'int': 78} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
