# sandbox_telemetry_parse — 2026-10-14 23:48:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=550454 lines=1222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1217 |
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
| `chromeBrowserPssKb` | {'int': 1217} |
| `chromeGpuPssKb` | {'int': 1217} |
| `chromeOtherPssKb` | {'int': 1217} |
| `chromeProcesses` | {'int': 1217} |
| `chromeProfiles` | {'int': 1217} |
| `chromeRendererMaxPssKb` | {'int': 1217} |
| `chromeRendererPssKb` | {'int': 1217} |
| `chromeRenderers` | {'int': 1217} |
| `chromeTabs` | {'int': 1217} |
| `chromeTabsProbedProfiles` | {'int': 1217} |
| `chromeUtilityPssKb` | {'int': 1217} |
| `desktopPssKb` | {'int': 1217} |
| `hostPssKb` | {'int': 1217} |
| `kind` | {'str': 1217} |
| `memAvailableKb` | {'int': 1217} |
| `memTotalKb` | {'int': 1217} |
| `otherPssKb` | {'int': 1217} |
| `processes` | {'int': 1217} |
| `pssFallbackProcesses` | {'int': 1217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
